; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_socketpair.c_sp_wrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_socketpair.c_sp_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sp_ctx = type { i32*, i32, i32 }

@errno = common dso_local global i32 0, align 4
@SP_SIDE_CLIENT = common dso_local global i32 0, align 4
@SP_SIDE_SERVER = common dso_local global i32 0, align 4
@SP_CTX_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @sp_wrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp_wrap(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.sp_ctx*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @PJDLOG_ASSERT(i32 %11)
  %13 = call %struct.sp_ctx* @malloc(i32 16)
  store %struct.sp_ctx* %13, %struct.sp_ctx** %8, align 8
  %14 = load %struct.sp_ctx*, %struct.sp_ctx** %8, align 8
  %15 = icmp eq %struct.sp_ctx* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @errno, align 4
  store i32 %17, i32* %4, align 4
  br label %54

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load i32, i32* @SP_SIDE_CLIENT, align 4
  %23 = load %struct.sp_ctx*, %struct.sp_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.sp_ctx*, %struct.sp_ctx** %8, align 8
  %27 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %25, i32* %29, align 4
  %30 = load %struct.sp_ctx*, %struct.sp_ctx** %8, align 8
  %31 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 -1, i32* %33, align 4
  br label %47

34:                                               ; preds = %18
  %35 = load i32, i32* @SP_SIDE_SERVER, align 4
  %36 = load %struct.sp_ctx*, %struct.sp_ctx** %8, align 8
  %37 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.sp_ctx*, %struct.sp_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 -1, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.sp_ctx*, %struct.sp_ctx** %8, align 8
  %44 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %42, i32* %46, align 4
  br label %47

47:                                               ; preds = %34, %21
  %48 = load i32, i32* @SP_CTX_MAGIC, align 4
  %49 = load %struct.sp_ctx*, %struct.sp_ctx** %8, align 8
  %50 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.sp_ctx*, %struct.sp_ctx** %8, align 8
  %52 = bitcast %struct.sp_ctx* %51 to i8*
  %53 = load i8**, i8*** %7, align 8
  store i8* %52, i8** %53, align 8
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %47, %16
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local %struct.sp_ctx* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
