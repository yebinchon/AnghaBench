; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libauditd/extr_auditd_lib.c_auditd_gen_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libauditd/extr_auditd_lib.c_auditd_gen_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auditinfo_addr = type { i32 }

@AUE_audit_startup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s::Audit startup\00", align 1
@AUE_audit_shutdown = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s::Audit shutdown\00", align 1
@AUE_audit_recovery = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"%s::Audit recovery\00", align 1
@ADE_INVAL = common dso_local global i32 0, align 4
@ADE_NOMEM = common dso_local global i32 0, align 4
@ADE_AU_OPEN = common dso_local global i32 0, align 4
@ADE_AU_CLOSE = common dso_local global i32 0, align 4
@ADE_NOERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auditd_gen_record(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.auditinfo_addr, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %9, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @AUE_audit_startup, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 (...) @getprogname()
  %17 = call i32 @asprintf(i8** %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %36

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @AUE_audit_shutdown, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = call i32 (...) @getprogname()
  %24 = call i32 @asprintf(i8** %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %35

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @AUE_audit_recovery, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = call i32 (...) @getprogname()
  %31 = call i32 @asprintf(i8** %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  br label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @ADE_INVAL, align 4
  store i32 %33, i32* %3, align 4
  br label %103

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %22
  br label %36

36:                                               ; preds = %35, %15
  %37 = load i8*, i8** %9, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @ADE_NOMEM, align 4
  store i32 %40, i32* %3, align 4
  br label %103

41:                                               ; preds = %36
  %42 = call i32 (...) @au_open()
  store i32 %42, i32* %6, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i32, i32* @ADE_AU_OPEN, align 4
  store i32 %47, i32* %3, align 4
  br label %103

48:                                               ; preds = %41
  %49 = call i32 @bzero(%struct.auditinfo_addr* %11, i32 4)
  %50 = call i32 (...) @getuid()
  store i32 %50, i32* %7, align 4
  %51 = call i32 (...) @getpid()
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (...) @geteuid()
  %54 = call i32 (...) @getegid()
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (...) @getgid()
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = getelementptr inbounds %struct.auditinfo_addr, %struct.auditinfo_addr* %11, i32 0, i32 0
  %60 = call i32* @au_to_subject32_ex(i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32* %59)
  store i32* %60, i32** %10, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %48
  %63 = load i32, i32* %6, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @au_write(i32 %63, i32* %64)
  br label %66

66:                                               ; preds = %62, %48
  %67 = load i8*, i8** %9, align 8
  %68 = call i32* @au_to_text(i8* %67)
  store i32* %68, i32** %10, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @au_write(i32 %71, i32* %72)
  br label %74

74:                                               ; preds = %70, %66
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 @free(i8* %75)
  %77 = load i8*, i8** %5, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load i8*, i8** %5, align 8
  %81 = call i32* @au_to_path(i8* %80)
  store i32* %81, i32** %10, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* %6, align 4
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @au_write(i32 %84, i32* %85)
  br label %87

87:                                               ; preds = %83, %79, %74
  %88 = call i32* @au_to_return32(i32 0, i32 0)
  store i32* %88, i32** %10, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* %6, align 4
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @au_write(i32 %91, i32* %92)
  br label %94

94:                                               ; preds = %90, %87
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @au_close(i32 %95, i32 1, i32 %96)
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* @ADE_AU_CLOSE, align 4
  store i32 %100, i32* %3, align 4
  br label %103

101:                                              ; preds = %94
  %102 = load i32, i32* @ADE_NOERR, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %99, %44, %39, %32
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @asprintf(i8**, i8*, i32) #1

declare dso_local i32 @getprogname(...) #1

declare dso_local i32 @au_open(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @bzero(%struct.auditinfo_addr*, i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32* @au_to_subject32_ex(i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @geteuid(...) #1

declare dso_local i32 @getegid(...) #1

declare dso_local i32 @getgid(...) #1

declare dso_local i32 @au_write(i32, i32*) #1

declare dso_local i32* @au_to_text(i8*) #1

declare dso_local i32* @au_to_path(i8*) #1

declare dso_local i32* @au_to_return32(i32, i32) #1

declare dso_local i32 @au_close(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
