; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_libntpq.c_ntpq_get_assoc_clocktype.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_libntpq.c_ntpq_get_assoc_clocktype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@LENHOSTNAME = common dso_local global i32 0, align 4
@NTPQ_BUFLEN = common dso_local global i32 0, align 4
@numassoc = common dso_local global i32 0, align 4
@assoc_cache = common dso_local global %struct.TYPE_2__* null, align 8
@peervar_assoc = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"dstadr\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntpq_get_assoc_clocktype(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* @LENHOSTNAME, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* @NTPQ_BUFLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @numassoc, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %1
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %59

26:                                               ; preds = %21
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @assoc_cache, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @peervar_assoc, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = trunc i64 %13 to i32
  %38 = call i32 @ntpq_get_peervar(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %37)
  store i32 %38, i32* %6, align 4
  br label %50

39:                                               ; preds = %26
  %40 = load i64, i64* %4, align 8
  %41 = trunc i64 %17 to i32
  %42 = call i32 @ntpq_read_assoc_peervars(i64 %40, i8* %18, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %59

46:                                               ; preds = %39
  %47 = load i32, i32* %5, align 4
  %48 = trunc i64 %13 to i32
  %49 = call i32 @ntpq_getvar(i8* %18, i32 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %48)
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %46, %36
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 0, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = call i64 @decodenetnum(i8* %15, i32* %7)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 @ntpq_decodeaddrtype(i32* %7)
  store i32 %57, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %59

58:                                               ; preds = %53, %50
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %59

59:                                               ; preds = %58, %56, %45, %25
  %60 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ntpq_get_peervar(i8*, i8*, i32) #2

declare dso_local i32 @ntpq_read_assoc_peervars(i64, i8*, i32) #2

declare dso_local i32 @ntpq_getvar(i8*, i32, i8*, i8*, i32) #2

declare dso_local i64 @decodenetnum(i8*, i32*) #2

declare dso_local i32 @ntpq_decodeaddrtype(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
