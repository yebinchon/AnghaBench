; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/test/extr_nt_gss_server.c_common_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/test/extr_nt_gss_server.c_common_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.getargs = type opaque
%struct.servent = type { i32 }

@args = common dso_local global %struct.getargs* null, align 8
@num_args = common dso_local global i32 0, align 4
@help_flag = common dso_local global i64 0, align 8
@version_flag = common dso_local global i64 0, align 8
@port_str = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Bad port `%s'\00", align 1
@PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8**, void (i32, %struct.getargs*, i32)*)* @common_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @common_setup(i32* %0, i32* %1, i8** %2, void (i32, %struct.getargs*, i32)* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca void (i32, %struct.getargs*, i32)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.servent*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8** %2, i8*** %7, align 8
  store void (i32, %struct.getargs*, i32)* %3, void (i32, %struct.getargs*, i32)** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i8**, i8*** %7, align 8
  %16 = load %struct.getargs*, %struct.getargs** @args, align 8
  %17 = load i32, i32* @num_args, align 4
  %18 = load void (i32, %struct.getargs*, i32)*, void (i32, %struct.getargs*, i32)** %8, align 8
  %19 = call i32 @krb5_program_setup(i32* %12, i32 %14, i8** %15, %struct.getargs* %16, i32 %17, void (i32, %struct.getargs*, i32)* %18)
  %20 = load i32*, i32** %6, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i64, i64* @help_flag, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load void (i32, %struct.getargs*, i32)*, void (i32, %struct.getargs*, i32)** %8, align 8
  %25 = load %struct.getargs*, %struct.getargs** @args, align 8
  %26 = load i32, i32* @num_args, align 4
  call void %24(i32 0, %struct.getargs* %25, i32 %26)
  br label %27

27:                                               ; preds = %23, %4
  %28 = load i64, i64* @version_flag, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = call i32 @print_version(i32* null)
  %32 = call i32 @exit(i32 0) #3
  unreachable

33:                                               ; preds = %27
  %34 = load i8*, i8** @port_str, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %61

36:                                               ; preds = %33
  %37 = load i8*, i8** @port_str, align 8
  %38 = call %struct.servent* @roken_getservbyname(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.servent* %38, %struct.servent** %10, align 8
  %39 = load %struct.servent*, %struct.servent** %10, align 8
  %40 = icmp ne %struct.servent* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.servent*, %struct.servent** %10, align 8
  %43 = getelementptr inbounds %struct.servent, %struct.servent* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  br label %60

45:                                               ; preds = %36
  %46 = load i8*, i8** @port_str, align 8
  %47 = call i32 @strtol(i8* %46, i8** %11, i32 10)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i8*, i8** %11, align 8
  %52 = load i8*, i8** @port_str, align 8
  %53 = icmp eq i8* %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i8*, i8** @port_str, align 8
  %56 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %54, %50, %45
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @htons(i32 %58)
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %57, %41
  br label %61

61:                                               ; preds = %60, %33
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @PORT, align 4
  %68 = call i32 @krb5_getportbyname(i32 %66, i32 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 4711)
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %64, %61
  %70 = load i32, i32* %9, align 4
  ret i32 %70
}

declare dso_local i32 @krb5_program_setup(i32*, i32, i8**, %struct.getargs*, i32, void (i32, %struct.getargs*, i32)*) #1

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
