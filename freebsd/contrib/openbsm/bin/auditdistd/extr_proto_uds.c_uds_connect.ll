; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_uds.c_uds_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_uds.c_uds_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uds_ctx = type { i32, i32 }
%struct.sockaddr = type { i32 }

@UDS_SIDE_CLIENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8**)* @uds_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uds_connect(i8* %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.uds_ctx*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @PJDLOG_ASSERT(i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = icmp sge i32 %16, -1
  %18 = zext i1 %17 to i32
  %19 = call i32 @PJDLOG_ASSERT(i32 %18)
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* @UDS_SIDE_CLIENT, align 4
  %22 = call i32 @uds_common_setup(i8* %20, i32 %21, %struct.uds_ctx** %10)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %5, align 4
  br label %49

27:                                               ; preds = %4
  %28 = load i8*, i8** %6, align 8
  %29 = icmp eq i8* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @PJDLOG_ASSERT(i32 %30)
  %32 = load %struct.uds_ctx*, %struct.uds_ctx** %10, align 8
  %33 = getelementptr inbounds %struct.uds_ctx, %struct.uds_ctx* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.uds_ctx*, %struct.uds_ctx** %10, align 8
  %36 = getelementptr inbounds %struct.uds_ctx, %struct.uds_ctx* %35, i32 0, i32 0
  %37 = bitcast i32* %36 to %struct.sockaddr*
  %38 = call i32 @connect(i32 %34, %struct.sockaddr* %37, i32 4)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %45

40:                                               ; preds = %27
  %41 = load i32, i32* @errno, align 4
  store i32 %41, i32* %11, align 4
  %42 = load %struct.uds_ctx*, %struct.uds_ctx** %10, align 8
  %43 = call i32 @uds_close(%struct.uds_ctx* %42)
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %5, align 4
  br label %49

45:                                               ; preds = %27
  %46 = load %struct.uds_ctx*, %struct.uds_ctx** %10, align 8
  %47 = bitcast %struct.uds_ctx* %46 to i8*
  %48 = load i8**, i8*** %9, align 8
  store i8* %47, i8** %48, align 8
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %45, %40, %25
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @uds_common_setup(i8*, i32, %struct.uds_ctx**) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @uds_close(%struct.uds_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
