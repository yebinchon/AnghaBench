; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_checkconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_checkconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"cannot getcwd: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"cannot chdir(%s): %s\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"unbound-checkconf: no errors in %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @checkconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkconf(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4096 x i8], align 16
  %8 = alloca %struct.config_file*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call %struct.config_file* (...) @config_create()
  store %struct.config_file* %9, %struct.config_file** %8, align 8
  %10 = load %struct.config_file*, %struct.config_file** %8, align 8
  %11 = icmp ne %struct.config_file* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = call i32 @fatal_exit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %3
  %15 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %15, align 16
  %16 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %17 = call i32 @getcwd(i8* %16, i32 4096)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @strerror(i32 %20)
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %25, align 16
  br label %26

26:                                               ; preds = %19, %14
  %27 = load %struct.config_file*, %struct.config_file** %8, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @config_read(%struct.config_file* %27, i8* %28, i32* null)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load %struct.config_file*, %struct.config_file** %8, align 8
  %33 = call i32 @config_delete(%struct.config_file* %32)
  %34 = call i32 @exit(i32 1) #3
  unreachable

35:                                               ; preds = %26
  %36 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %37 = load i8, i8* %36, align 16
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %42 = call i32 @chdir(i8* %41)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %46 = load i32, i32* @errno, align 4
  %47 = call i32 @strerror(i32 %46)
  %48 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %45, i32 %47)
  br label %49

49:                                               ; preds = %44, %40, %35
  %50 = load i8*, i8** %5, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load %struct.config_file*, %struct.config_file** %8, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @print_option(%struct.config_file* %53, i8* %54, i32 %55)
  %57 = load %struct.config_file*, %struct.config_file** %8, align 8
  %58 = call i32 @config_delete(%struct.config_file* %57)
  br label %78

59:                                               ; preds = %49
  %60 = load %struct.config_file*, %struct.config_file** %8, align 8
  %61 = call i32 @morechecks(%struct.config_file* %60)
  %62 = load %struct.config_file*, %struct.config_file** %8, align 8
  %63 = call i32 (...) @iter_get_funcblock()
  %64 = call i32 @check_mod(%struct.config_file* %62, i32 %63)
  %65 = load %struct.config_file*, %struct.config_file** %8, align 8
  %66 = call i32 (...) @val_get_funcblock()
  %67 = call i32 @check_mod(%struct.config_file* %65, i32 %66)
  %68 = load %struct.config_file*, %struct.config_file** %8, align 8
  %69 = call i32 @check_fwd(%struct.config_file* %68)
  %70 = load %struct.config_file*, %struct.config_file** %8, align 8
  %71 = call i32 @check_hints(%struct.config_file* %70)
  %72 = load %struct.config_file*, %struct.config_file** %8, align 8
  %73 = call i32 @check_auth(%struct.config_file* %72)
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %74)
  %76 = load %struct.config_file*, %struct.config_file** %8, align 8
  %77 = call i32 @config_delete(%struct.config_file* %76)
  br label %78

78:                                               ; preds = %59, %52
  ret void
}

declare dso_local %struct.config_file* @config_create(...) #1

declare dso_local i32 @fatal_exit(i8*) #1

declare dso_local i32 @getcwd(i8*, i32) #1

declare dso_local i32 @log_err(i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @config_read(%struct.config_file*, i8*, i32*) #1

declare dso_local i32 @config_delete(%struct.config_file*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @chdir(i8*) #1

declare dso_local i32 @print_option(%struct.config_file*, i8*, i32) #1

declare dso_local i32 @morechecks(%struct.config_file*) #1

declare dso_local i32 @check_mod(%struct.config_file*, i32) #1

declare dso_local i32 @iter_get_funcblock(...) #1

declare dso_local i32 @val_get_funcblock(...) #1

declare dso_local i32 @check_fwd(%struct.config_file*) #1

declare dso_local i32 @check_hints(%struct.config_file*) #1

declare dso_local i32 @check_auth(%struct.config_file*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
