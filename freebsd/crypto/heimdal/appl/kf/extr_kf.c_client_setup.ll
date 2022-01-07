; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/kf/extr_kf.c_client_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/kf/extr_kf.c_client_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servent = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"krb5_init_context failed: %d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"libdefaults\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"forwardable\00", align 1
@forwardable = common dso_local global i32 0, align 4
@args = common dso_local global i32 0, align 4
@num_args = common dso_local global i32 0, align 4
@help_flag = common dso_local global i64 0, align 8
@version_flag = common dso_local global i64 0, align 8
@port_str = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Bad port `%s'\00", align 1
@KF_PORT_NAME = common dso_local global i32 0, align 4
@KF_PORT_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8**)* @client_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_setup(i32* %0, i32* %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.servent*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i8**, i8*** %6, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @setprogname(i8* %14)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @krb5_init_context(i32* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %3
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @krb5_config_get_bool(i32 %25, i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32 %26, i32* @forwardable, align 4
  %27 = load i32, i32* @args, align 4
  %28 = load i32, i32* @num_args, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i8**, i8*** %6, align 8
  %32 = call i64 @getarg(i32 %27, i32 %28, i32 %30, i8** %31, i32* %7)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %23
  %35 = load i32, i32* @args, align 4
  %36 = load i32, i32* @num_args, align 4
  %37 = call i32 @usage(i32 1, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %23
  %39 = load i64, i64* @help_flag, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* @args, align 4
  %43 = load i32, i32* @num_args, align 4
  %44 = call i32 @usage(i32 0, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i64, i64* @version_flag, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = call i32 @print_version(i32* null)
  %50 = call i32 @exit(i32 0) #3
  unreachable

51:                                               ; preds = %45
  %52 = load i8*, i8** @port_str, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %79

54:                                               ; preds = %51
  %55 = load i8*, i8** @port_str, align 8
  %56 = call %struct.servent* @roken_getservbyname(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store %struct.servent* %56, %struct.servent** %10, align 8
  %57 = load %struct.servent*, %struct.servent** %10, align 8
  %58 = icmp ne %struct.servent* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.servent*, %struct.servent** %10, align 8
  %61 = getelementptr inbounds %struct.servent, %struct.servent* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %8, align 4
  br label %78

63:                                               ; preds = %54
  %64 = load i8*, i8** @port_str, align 8
  %65 = call i32 @strtol(i8* %64, i8** %11, i32 10)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load i8*, i8** %11, align 8
  %70 = load i8*, i8** @port_str, align 8
  %71 = icmp eq i8* %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i8*, i8** @port_str, align 8
  %74 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %72, %68, %63
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @htons(i32 %76)
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %75, %59
  br label %79

79:                                               ; preds = %78, %51
  %80 = load i32, i32* %8, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @KF_PORT_NAME, align 4
  %86 = load i32, i32* @KF_PORT_NUM, align 4
  %87 = call i32 @krb5_getportbyname(i32 %84, i32 %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %82, %79
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %7, align 4
  %92 = sub nsw i32 %90, %91
  %93 = icmp slt i32 %92, 1
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, i32* @args, align 4
  %96 = load i32, i32* @num_args, align 4
  %97 = call i32 @usage(i32 1, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %88
  %99 = load i32, i32* %7, align 4
  %100 = load i32*, i32** %5, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %8, align 4
  ret i32 %101
}

declare dso_local i32 @setprogname(i8*) #1

declare dso_local i32 @krb5_init_context(i32*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @krb5_config_get_bool(i32, i32*, i8*, i8*, i32*) #1

declare dso_local i64 @getarg(i32, i32, i32, i8**, i32*) #1

declare dso_local i32 @usage(i32, i32, i32) #1

declare dso_local i32 @print_version(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.servent* @roken_getservbyname(i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @krb5_getportbyname(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
