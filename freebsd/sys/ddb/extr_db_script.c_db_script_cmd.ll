; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_script.c_db_script_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_script.c_db_script_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_script = type { i32 }

@DB_MAXSCRIPTNAME = common dso_local global i32 0, align 4
@tIDENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"usage: script scriptname=script\0A\00", align 1
@db_tok_string = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"scriptname too long\0A\00", align 1
@tEOL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"script '%s' not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s=%s\0A\00", align 1
@tEQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"Error: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"?\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_script_cmd(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ddb_script*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %16 = load i32, i32* @DB_MAXSCRIPTNAME, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = call i32 (...) @db_read_token()
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* @tIDENT, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 (...) @db_skip_to_eol()
  store i32 1, i32* %15, align 4
  br label %89

27:                                               ; preds = %4
  %28 = load i32, i32* @db_tok_string, align 4
  %29 = trunc i64 %17 to i32
  %30 = call i32 @strlcpy(i8* %19, i32 %28, i32 %29)
  %31 = sext i32 %30 to i64
  %32 = icmp uge i64 %31, %17
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %35 = call i32 (...) @db_skip_to_eol()
  store i32 1, i32* %15, align 4
  br label %89

36:                                               ; preds = %27
  %37 = call i32 (...) @db_read_token()
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* @tEOL, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = call %struct.ddb_script* @db_script_lookup(i8* %19)
  store %struct.ddb_script* %42, %struct.ddb_script** %12, align 8
  %43 = load %struct.ddb_script*, %struct.ddb_script** %12, align 8
  %44 = icmp eq %struct.ddb_script* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  %47 = call i32 (...) @db_skip_to_eol()
  store i32 1, i32* %15, align 4
  br label %89

48:                                               ; preds = %41
  %49 = load %struct.ddb_script*, %struct.ddb_script** %12, align 8
  %50 = getelementptr inbounds %struct.ddb_script, %struct.ddb_script* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %19, i32 %51)
  br label %87

53:                                               ; preds = %36
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @tEQ, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %84

57:                                               ; preds = %53
  %58 = call i8* (...) @db_get_line()
  store i8* %58, i8** %9, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @strlen(i8* %60)
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %59, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 10
  br i1 %67, label %68, label %75

68:                                               ; preds = %57
  %69 = load i8*, i8** %9, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @strlen(i8* %70)
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %69, i64 %73
  store i8 0, i8* %74, align 1
  br label %75

75:                                               ; preds = %68, %57
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @db_script_set(i8* %19, i8* %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* %13, align 4
  %82 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %80, %75
  br label %86

84:                                               ; preds = %53
  %85 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %83
  br label %87

87:                                               ; preds = %86, %48
  %88 = call i32 (...) @db_skip_to_eol()
  store i32 0, i32* %15, align 4
  br label %89

89:                                               ; preds = %87, %45, %33, %24
  %90 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load i32, i32* %15, align 4
  switch i32 %91, label %93 [
    i32 0, label %92
    i32 1, label %92
  ]

92:                                               ; preds = %89, %89
  ret void

93:                                               ; preds = %89
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @db_read_token(...) #2

declare dso_local i32 @db_printf(i8*, ...) #2

declare dso_local i32 @db_skip_to_eol(...) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local %struct.ddb_script* @db_script_lookup(i8*) #2

declare dso_local i8* @db_get_line(...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @db_script_set(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
