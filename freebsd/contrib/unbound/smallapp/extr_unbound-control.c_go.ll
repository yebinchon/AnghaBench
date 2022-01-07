; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-control.c_go.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-control.c_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"could not read config file\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"control-enable is 'no' in the config file.\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i8**)* @go to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @go(i8* %0, i8* %1, i32 %2, i32 %3, i8** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct.config_file*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8** %4, i8*** %10, align 8
  %16 = call %struct.config_file* (...) @config_create()
  store %struct.config_file* %16, %struct.config_file** %11, align 8
  %17 = icmp ne %struct.config_file* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %5
  %19 = call i32 @fatal_exit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %5
  %21 = load %struct.config_file*, %struct.config_file** %11, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @config_read(%struct.config_file* %21, i8* %22, i32* null)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = call i32 @fatal_exit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %20
  %28 = load %struct.config_file*, %struct.config_file** %11, align 8
  %29 = getelementptr inbounds %struct.config_file, %struct.config_file* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = call i32 @log_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %27
  %35 = load %struct.config_file*, %struct.config_file** %11, align 8
  %36 = call i32* @setup_ctx(%struct.config_file* %35)
  store i32* %36, i32** %14, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.config_file*, %struct.config_file** %11, align 8
  %39 = load i32, i32* %9, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load i8**, i8*** %10, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br label %47

47:                                               ; preds = %41, %34
  %48 = phi i1 [ false, %34 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @contact_server(i8* %37, %struct.config_file* %38, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32*, i32** %14, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32* @setup_ssl(i32* %51, i32 %52)
  store i32* %53, i32** %15, align 8
  %54 = load i32*, i32** %15, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i8**, i8*** %10, align 8
  %59 = call i32 @go_cmd(i32* %54, i32 %55, i32 %56, i32 %57, i8** %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32*, i32** %15, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %47
  %63 = load i32*, i32** %15, align 8
  %64 = call i32 @SSL_free(i32* %63)
  br label %65

65:                                               ; preds = %62, %47
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @close(i32 %66)
  %68 = load i32*, i32** %14, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32*, i32** %14, align 8
  %72 = call i32 @SSL_CTX_free(i32* %71)
  br label %73

73:                                               ; preds = %70, %65
  %74 = load %struct.config_file*, %struct.config_file** %11, align 8
  %75 = call i32 @config_delete(%struct.config_file* %74)
  %76 = load i32, i32* %13, align 4
  ret i32 %76
}

declare dso_local %struct.config_file* @config_create(...) #1

declare dso_local i32 @fatal_exit(i8*) #1

declare dso_local i32 @config_read(%struct.config_file*, i8*, i32*) #1

declare dso_local i32 @log_warn(i8*) #1

declare dso_local i32* @setup_ctx(%struct.config_file*) #1

declare dso_local i32 @contact_server(i8*, %struct.config_file*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @setup_ssl(i32*, i32) #1

declare dso_local i32 @go_cmd(i32*, i32, i32, i32, i8**) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

declare dso_local i32 @config_delete(%struct.config_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
