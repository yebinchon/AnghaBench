; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/kf/extr_kfd.c_server_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/kf/extr_kfd.c_server_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servent = type { i32 }

@args = common dso_local global i32 0, align 4
@num_args = common dso_local global i32 0, align 4
@help_flag = common dso_local global i64 0, align 8
@version_flag = common dso_local global i64 0, align 8
@port_str = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Bad port `%s'\00", align 1
@KF_PORT_NAME = common dso_local global i32 0, align 4
@KF_PORT_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**)* @server_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_setup(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.servent*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i8**, i8*** %6, align 8
  %14 = load i32, i32* @args, align 4
  %15 = load i32, i32* @num_args, align 4
  %16 = call i32 @krb5_program_setup(i32* %11, i32 %12, i8** %13, i32 %14, i32 %15, i32 (i32, i32, i32)* @usage)
  store i32 %16, i32* %8, align 4
  %17 = load i64, i64* @help_flag, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @args, align 4
  %21 = load i32, i32* @num_args, align 4
  %22 = call i32 @usage(i32 0, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %3
  %24 = load i64, i64* @version_flag, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = call i32 @print_version(i32* null)
  %28 = call i32 @exit(i32 0) #3
  unreachable

29:                                               ; preds = %23
  %30 = load i8*, i8** @port_str, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %57

32:                                               ; preds = %29
  %33 = load i8*, i8** @port_str, align 8
  %34 = call %struct.servent* @roken_getservbyname(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.servent* %34, %struct.servent** %9, align 8
  %35 = load %struct.servent*, %struct.servent** %9, align 8
  %36 = icmp ne %struct.servent* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.servent*, %struct.servent** %9, align 8
  %39 = getelementptr inbounds %struct.servent, %struct.servent* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  br label %56

41:                                               ; preds = %32
  %42 = load i8*, i8** @port_str, align 8
  %43 = call i32 @strtol(i8* %42, i8** %10, i32 10)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** @port_str, align 8
  %49 = icmp eq i8* %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i8*, i8** @port_str, align 8
  %52 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %50, %46, %41
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @htons(i32 %54)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %53, %37
  br label %57

57:                                               ; preds = %56, %29
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @KF_PORT_NAME, align 4
  %64 = load i32, i32* @KF_PORT_NUM, align 4
  %65 = call i32 @krb5_getportbyname(i32 %62, i32 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %64)
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %60, %57
  %67 = load i8**, i8*** %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* @args, align 4
  %75 = load i32, i32* @num_args, align 4
  %76 = call i32 @usage(i32 1, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %66
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @krb5_program_setup(i32*, i32, i8**, i32, i32, i32 (i32, i32, i32)*) #1

declare dso_local i32 @usage(i32, i32, i32) #1

declare dso_local i32 @print_version(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.servent* @roken_getservbyname(i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

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
