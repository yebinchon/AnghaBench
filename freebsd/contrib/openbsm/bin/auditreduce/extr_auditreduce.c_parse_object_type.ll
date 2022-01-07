; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditreduce/extr_auditreduce.c_parse_object_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditreduce/extr_auditreduce.c_parse_object_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILEOBJ = common dso_local global i32 0, align 4
@p_fileobj = common dso_local global i8* null, align 8
@opttochk = common dso_local global i32 0, align 4
@OPT_of = common dso_local global i32 0, align 4
@MSGQIDOBJ = common dso_local global i32 0, align 4
@p_msgqobj = common dso_local global i8* null, align 8
@OPT_om = common dso_local global i32 0, align 4
@PIDOBJ = common dso_local global i32 0, align 4
@p_pidobj = common dso_local global i8* null, align 8
@OPT_op = common dso_local global i32 0, align 4
@SEMIDOBJ = common dso_local global i32 0, align 4
@p_semobj = common dso_local global i8* null, align 8
@OPT_ose = common dso_local global i32 0, align 4
@SHMIDOBJ = common dso_local global i32 0, align 4
@p_shmobj = common dso_local global i8* null, align 8
@OPT_osh = common dso_local global i32 0, align 4
@SOCKOBJ = common dso_local global i32 0, align 4
@p_sockobj = common dso_local global i8* null, align 8
@OPT_oso = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unknown value for -o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @parse_object_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_object_type(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %77

8:                                                ; preds = %2
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @FILEOBJ, align 4
  %11 = call i32 @strcmp(i8* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %8
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** @p_fileobj, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @parse_regexp(i8* %15)
  %17 = load i32, i32* @opttochk, align 4
  %18 = load i32, i32* @OPT_of, align 4
  %19 = call i32 @SETOPT(i32 %17, i32 %18)
  br label %77

20:                                               ; preds = %8
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* @MSGQIDOBJ, align 4
  %23 = call i32 @strcmp(i8* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** %4, align 8
  store i8* %26, i8** @p_msgqobj, align 8
  %27 = load i32, i32* @opttochk, align 4
  %28 = load i32, i32* @OPT_om, align 4
  %29 = call i32 @SETOPT(i32 %27, i32 %28)
  br label %76

30:                                               ; preds = %20
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* @PIDOBJ, align 4
  %33 = call i32 @strcmp(i8* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i8*, i8** %4, align 8
  store i8* %36, i8** @p_pidobj, align 8
  %37 = load i32, i32* @opttochk, align 4
  %38 = load i32, i32* @OPT_op, align 4
  %39 = call i32 @SETOPT(i32 %37, i32 %38)
  br label %75

40:                                               ; preds = %30
  %41 = load i8*, i8** %3, align 8
  %42 = load i32, i32* @SEMIDOBJ, align 4
  %43 = call i32 @strcmp(i8* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %4, align 8
  store i8* %46, i8** @p_semobj, align 8
  %47 = load i32, i32* @opttochk, align 4
  %48 = load i32, i32* @OPT_ose, align 4
  %49 = call i32 @SETOPT(i32 %47, i32 %48)
  br label %74

50:                                               ; preds = %40
  %51 = load i8*, i8** %3, align 8
  %52 = load i32, i32* @SHMIDOBJ, align 4
  %53 = call i32 @strcmp(i8* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i8*, i8** %4, align 8
  store i8* %56, i8** @p_shmobj, align 8
  %57 = load i32, i32* @opttochk, align 4
  %58 = load i32, i32* @OPT_osh, align 4
  %59 = call i32 @SETOPT(i32 %57, i32 %58)
  br label %73

60:                                               ; preds = %50
  %61 = load i8*, i8** %3, align 8
  %62 = load i32, i32* @SOCKOBJ, align 4
  %63 = call i32 @strcmp(i8* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** %4, align 8
  store i8* %66, i8** @p_sockobj, align 8
  %67 = load i32, i32* @opttochk, align 4
  %68 = load i32, i32* @OPT_oso, align 4
  %69 = call i32 @SETOPT(i32 %67, i32 %68)
  br label %72

70:                                               ; preds = %60
  %71 = call i32 @usage(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %65
  br label %73

73:                                               ; preds = %72, %55
  br label %74

74:                                               ; preds = %73, %45
  br label %75

75:                                               ; preds = %74, %35
  br label %76

76:                                               ; preds = %75, %25
  br label %77

77:                                               ; preds = %7, %76, %13
  ret void
}

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @parse_regexp(i8*) #1

declare dso_local i32 @SETOPT(i32, i32) #1

declare dso_local i32 @usage(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
