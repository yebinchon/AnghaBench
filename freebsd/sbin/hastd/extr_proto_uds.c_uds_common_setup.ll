; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto_uds.c_uds_common_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto_uds.c_uds_common_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uds_ctx = type { i32, i32, i32, i64, i32 }

@errno = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@UDS_CTX_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32)* @uds_common_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uds_common_setup(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uds_ctx*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call %struct.uds_ctx* @malloc(i32 32)
  store %struct.uds_ctx* %10, %struct.uds_ctx** %8, align 8
  %11 = load %struct.uds_ctx*, %struct.uds_ctx** %8, align 8
  %12 = icmp eq %struct.uds_ctx* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @errno, align 4
  store i32 %14, i32* %4, align 4
  br label %52

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.uds_ctx*, %struct.uds_ctx** %8, align 8
  %18 = getelementptr inbounds %struct.uds_ctx, %struct.uds_ctx* %17, i32 0, i32 4
  %19 = call i32 @uds_addr(i8* %16, i32* %18)
  store i32 %19, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.uds_ctx*, %struct.uds_ctx** %8, align 8
  %23 = call i32 @free(%struct.uds_ctx* %22)
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %52

25:                                               ; preds = %15
  %26 = load i32, i32* @AF_UNIX, align 4
  %27 = load i32, i32* @SOCK_STREAM, align 4
  %28 = call i32 @socket(i32 %26, i32 %27, i32 0)
  %29 = load %struct.uds_ctx*, %struct.uds_ctx** %8, align 8
  %30 = getelementptr inbounds %struct.uds_ctx, %struct.uds_ctx* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.uds_ctx*, %struct.uds_ctx** %8, align 8
  %32 = getelementptr inbounds %struct.uds_ctx, %struct.uds_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load i32, i32* @errno, align 4
  store i32 %36, i32* %9, align 4
  %37 = load %struct.uds_ctx*, %struct.uds_ctx** %8, align 8
  %38 = call i32 @free(%struct.uds_ctx* %37)
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %52

40:                                               ; preds = %25
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.uds_ctx*, %struct.uds_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.uds_ctx, %struct.uds_ctx* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.uds_ctx*, %struct.uds_ctx** %8, align 8
  %45 = getelementptr inbounds %struct.uds_ctx, %struct.uds_ctx* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @UDS_CTX_MAGIC, align 4
  %47 = load %struct.uds_ctx*, %struct.uds_ctx** %8, align 8
  %48 = getelementptr inbounds %struct.uds_ctx, %struct.uds_ctx* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.uds_ctx*, %struct.uds_ctx** %8, align 8
  %50 = bitcast %struct.uds_ctx* %49 to i8*
  %51 = load i8**, i8*** %6, align 8
  store i8* %50, i8** %51, align 8
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %40, %35, %21, %13
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.uds_ctx* @malloc(i32) #1

declare dso_local i32 @uds_addr(i8*, i32*) #1

declare dso_local i32 @free(%struct.uds_ctx*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
