; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditreduce/extr_auditreduce.c_select_ipcobj.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditreduce/extr_auditreduce.c_select_ipcobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AT_IPC_MSG = common dso_local global i64 0, align 8
@OPT_om = common dso_local global i32 0, align 4
@opttochk = common dso_local global i32 0, align 4
@p_msgqobj = common dso_local global i32 0, align 4
@AT_IPC_SEM = common dso_local global i64 0, align 8
@OPT_ose = common dso_local global i32 0, align 4
@p_semobj = common dso_local global i32 0, align 4
@AT_IPC_SHM = common dso_local global i64 0, align 8
@OPT_osh = common dso_local global i32 0, align 4
@p_shmobj = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64*)* @select_ipcobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_ipcobj(i64 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @AT_IPC_MSG, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %3
  %12 = load i64*, i64** %7, align 8
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @OPT_om, align 4
  %15 = call i32 @SETOPT(i64 %13, i32 %14)
  %16 = load i32, i32* @opttochk, align 4
  %17 = load i32, i32* @OPT_om, align 4
  %18 = call i64 @ISOPTSET(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %11
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* @p_msgqobj, align 4
  %23 = call i64 @strtol(i32 %22, i8** null, i32 10)
  %24 = icmp ne i64 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %89

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %11
  store i32 1, i32* %4, align 4
  br label %89

28:                                               ; preds = %3
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @AT_IPC_SEM, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load i64*, i64** %7, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @OPT_ose, align 4
  %36 = call i32 @SETOPT(i64 %34, i32 %35)
  %37 = load i32, i32* @opttochk, align 4
  %38 = load i32, i32* @OPT_ose, align 4
  %39 = call i64 @ISOPTSET(i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load i64, i64* %6, align 8
  %43 = load i32, i32* @p_semobj, align 4
  %44 = call i64 @strtol(i32 %43, i8** null, i32 10)
  %45 = icmp ne i64 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %89

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %32
  store i32 1, i32* %4, align 4
  br label %89

49:                                               ; preds = %28
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @AT_IPC_SHM, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %49
  %54 = load i64*, i64** %7, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @OPT_osh, align 4
  %57 = call i32 @SETOPT(i64 %55, i32 %56)
  %58 = load i32, i32* @opttochk, align 4
  %59 = load i32, i32* @OPT_osh, align 4
  %60 = call i64 @ISOPTSET(i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %53
  %63 = load i64, i64* %6, align 8
  %64 = load i32, i32* @p_shmobj, align 4
  %65 = call i64 @strtol(i32 %64, i8** null, i32 10)
  %66 = icmp ne i64 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %89

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %53
  store i32 1, i32* %4, align 4
  br label %89

70:                                               ; preds = %49
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* @opttochk, align 4
  %74 = load i32, i32* @OPT_om, align 4
  %75 = call i64 @ISOPTSET(i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @opttochk, align 4
  %79 = load i32, i32* @OPT_ose, align 4
  %80 = call i64 @ISOPTSET(i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @opttochk, align 4
  %84 = load i32, i32* @OPT_osh, align 4
  %85 = call i64 @ISOPTSET(i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82, %77, %72
  store i32 0, i32* %4, align 4
  br label %89

88:                                               ; preds = %82
  store i32 1, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %87, %69, %67, %48, %46, %27, %25
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @SETOPT(i64, i32) #1

declare dso_local i64 @ISOPTSET(i32, i32) #1

declare dso_local i64 @strtol(i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
