; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/kernspace/extr_alloc.c_rumptest_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/kernspace/extr_alloc.c_rumptest_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mtx = common dso_local global i32 0, align 4
@MUTEX_DEFAULT = common dso_local global i32 0, align 4
@IPL_NONE = common dso_local global i32 0, align 4
@kcv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"venailu\00", align 1
@PRI_NONE = common dso_local global i32 0, align 4
@KTHREAD_MPSAFE = common dso_local global i32 0, align 4
@hthr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@pp1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"vara-allas\00", align 1
@pool_allocator_nointr = common dso_local global i32 0, align 4
@pp2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"allas\00", align 1
@store = common dso_local global i8** null, align 8
@PR_NOWAIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"pool_get store failed\00", align 1
@curstat = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"managed to allocate over limit\00", align 1
@PR_WAITOK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"pool get PR_WAITOK failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rumptest_alloc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i32, i32* @MUTEX_DEFAULT, align 4
  %7 = load i32, i32* @IPL_NONE, align 4
  %8 = call i32 @mutex_init(i32* @mtx, i32 %6, i32 %7)
  %9 = call i32 @cv_init(i32* @kcv, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @PRI_NONE, align 4
  %11 = load i32, i32* @KTHREAD_MPSAFE, align 4
  %12 = load i32, i32* @hthr, align 4
  %13 = call i32 @kthread_create(i32 %10, i32 %11, i32* null, i32 %12, i32* null, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @IPL_NONE, align 4
  %15 = call i32 @pool_init(i32* @pp1, i32 1024, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* @pool_allocator_nointr, i32 %14)
  %16 = load i32, i32* @IPL_NONE, align 4
  %17 = call i32 @pool_init(i32* @pp2, i32 1024, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* @pool_allocator_nointr, i32 %16)
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %39, %1
  %19 = load i32, i32* %5, align 4
  %20 = load i8**, i8*** @store, align 8
  %21 = call i32 @__arraycount(i8** %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load i32, i32* @PR_NOWAIT, align 4
  %25 = call i8* @pool_get(i32* @pp1, i32 %24)
  %26 = load i8**, i8*** @store, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  store i8* %25, i8** %29, align 8
  %30 = load i8**, i8*** @store, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %23
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %18

42:                                               ; preds = %18
  %43 = call i32 @mutex_enter(i32* @mtx)
  br label %44

44:                                               ; preds = %47, %42
  %45 = load i64, i64* @curstat, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 @cv_wait(i32* @kcv, i32* @mtx)
  br label %44

49:                                               ; preds = %44
  %50 = call i32 @mutex_exit(i32* @mtx)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %77, %49
  %52 = load i32, i32* %4, align 4
  %53 = mul nsw i32 %52, 1024
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %2, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %51
  %60 = load i32, i32* @PR_NOWAIT, align 4
  %61 = call i8* @pool_get(i32* @pp2, i32 %60)
  store i8* %61, i8** %3, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = call i32 @mutex_enter(i32* @mtx)
  %65 = load i64, i64* @curstat, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* @curstat, align 8
  %67 = call i32 @cv_signal(i32* @kcv)
  %68 = call i32 @mutex_exit(i32* @mtx)
  %69 = load i32, i32* @PR_WAITOK, align 4
  %70 = call i8* @pool_get(i32* @pp2, i32 %69)
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %63
  br label %80

75:                                               ; preds = %59
  %76 = load i8*, i8** %3, align 8
  store i8 97, i8* %76, align 1
  br label %77

77:                                               ; preds = %75
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %51

80:                                               ; preds = %74
  ret void
}

declare dso_local i32 @mutex_init(i32*, i32, i32) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @kthread_create(i32, i32, i32*, i32, i32*, i32*, i8*) #1

declare dso_local i32 @pool_init(i32*, i32, i32, i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @__arraycount(i8**) #1

declare dso_local i8* @pool_get(i32*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @cv_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
