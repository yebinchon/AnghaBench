; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }
%struct.servent = type { i32 }

@MaxPathLen = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ftp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"ftp/tcp: unknown service\00", align 1
@doglob = common dso_local global i32 0, align 4
@interactive = common dso_local global i32 0, align 4
@autologin = common dso_local global i32 0, align 4
@lineedit = common dso_local global i32 0, align 4
@passivemode = common dso_local global i64 0, align 8
@use_kerberos = common dso_local global i32 0, align 4
@getargs = common dso_local global i32 0, align 4
@num_args = common dso_local global i32 0, align 4
@help_flag = common dso_local global i64 0, align 8
@version_flag = common dso_local global i64 0, align 8
@debug_flag = common dso_local global i64 0, align 8
@SO_DEBUG = common dso_local global i32 0, align 4
@options = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@fromatty = common dso_local global i64 0, align 8
@verbose = common dso_local global i32 0, align 4
@cpend = common dso_local global i64 0, align 8
@proxy = common dso_local global i64 0, align 8
@crflag = common dso_local global i32 0, align 4
@sendport = common dso_local global i32 0, align 4
@home = common dso_local global i8* null, align 8
@toplevel = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@intr = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@lostpeer = common dso_local global i32 0, align 4
@ftp_do_gss_bindings = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.servent*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [5 x i8*], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.passwd* null, %struct.passwd** %7, align 8
  %13 = load i32, i32* @MaxPathLen, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @setprogname(i8* %19)
  %21 = call %struct.servent* @getservbyname(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.servent* %21, %struct.servent** %10, align 8
  %22 = load %struct.servent*, %struct.servent** %10, align 8
  %23 = icmp eq %struct.servent* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = call i32 @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %2
  store i32 1, i32* @doglob, align 4
  store i32 1, i32* @interactive, align 4
  store i32 1, i32* @autologin, align 4
  store i32 1, i32* @lineedit, align 4
  store i64 0, i64* @passivemode, align 8
  store i32 1, i32* @use_kerberos, align 4
  %27 = load i32, i32* @getargs, align 4
  %28 = load i32, i32* @num_args, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = call i64 @getarg(i32 %27, i32 %28, i32 %29, i8** %30, i32* %11)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = call i32 @usage(i32 1)
  br label %35

35:                                               ; preds = %33, %26
  %36 = load i64, i64* @help_flag, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @usage(i32 0)
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i64, i64* @version_flag, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = call i32 @print_version(i32* null)
  %45 = call i32 @exit(i32 0) #5
  unreachable

46:                                               ; preds = %40
  %47 = load i64, i64* @debug_flag, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* @SO_DEBUG, align 4
  %51 = load i32, i32* @options, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* @options, align 4
  %53 = load i32, i32* @debug, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @debug, align 4
  br label %55

55:                                               ; preds = %49, %46
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %4, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i8**, i8*** %5, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8*, i8** %60, i64 %61
  store i8** %62, i8*** %5, align 8
  %63 = load i32, i32* @stdin, align 4
  %64 = call i32 @fileno(i32 %63)
  %65 = call i64 @isatty(i32 %64)
  store i64 %65, i64* @fromatty, align 8
  %66 = load i64, i64* @fromatty, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %55
  %69 = load i32, i32* @verbose, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @verbose, align 4
  br label %71

71:                                               ; preds = %68, %55
  store i64 0, i64* @cpend, align 8
  store i64 0, i64* @proxy, align 8
  store i32 1, i32* @crflag, align 4
  store i32 -1, i32* @sendport, align 4
  %72 = call i32 (...) @getuid()
  %73 = call %struct.passwd* @k_getpwuid(i32 %72)
  store %struct.passwd* %73, %struct.passwd** %7, align 8
  %74 = load %struct.passwd*, %struct.passwd** %7, align 8
  %75 = icmp ne %struct.passwd* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.passwd*, %struct.passwd** %7, align 8
  %78 = getelementptr inbounds %struct.passwd, %struct.passwd* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = trunc i64 %14 to i32
  %81 = call i32 @strlcpy(i8* %16, i32 %79, i32 %80)
  store i8* %16, i8** @home, align 8
  br label %82

82:                                               ; preds = %76, %71
  %83 = load i32, i32* %4, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %118

85:                                               ; preds = %82
  %86 = load i32, i32* @toplevel, align 4
  %87 = call i64 @setjmp(i32 %86) #6
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = call i32 @exit(i32 0) #5
  unreachable

91:                                               ; preds = %85
  %92 = load i32, i32* @SIGINT, align 4
  %93 = load i32, i32* @intr, align 4
  %94 = call i32 @signal(i32 %92, i32 %93)
  %95 = load i32, i32* @SIGPIPE, align 4
  %96 = load i32, i32* @lostpeer, align 4
  %97 = call i32 @signal(i32 %95, i32 %96)
  %98 = call i64 (...) @getprogname()
  %99 = inttoptr i64 %98 to i8*
  %100 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i64 0, i64 0
  store i8* %99, i8** %100, align 16
  %101 = load i8**, i8*** %5, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i64 0, i64 1
  store i8* %103, i8** %104, align 8
  %105 = load i8**, i8*** %5, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 1
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i64 0, i64 2
  store i8* %107, i8** %108, align 16
  %109 = load i8**, i8*** %5, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 2
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i64 0, i64 3
  store i8* %111, i8** %112, align 8
  %113 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i64 0, i64 4
  store i8* null, i8** %113, align 16
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, 1
  %116 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i64 0, i64 0
  %117 = call i32 @setpeer(i32 %115, i8** %116)
  br label %118

118:                                              ; preds = %91, %82
  %119 = load i32, i32* @toplevel, align 4
  %120 = call i64 @setjmp(i32 %119) #6
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i32 1, i32* %6, align 4
  br label %124

123:                                              ; preds = %118
  store i32 0, i32* %6, align 4
  br label %124

124:                                              ; preds = %123, %122
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %124
  %128 = load i32, i32* @SIGINT, align 4
  %129 = load i32, i32* @intr, align 4
  %130 = call i32 @signal(i32 %128, i32 %129)
  %131 = load i32, i32* @SIGPIPE, align 4
  %132 = load i32, i32* @lostpeer, align 4
  %133 = call i32 @signal(i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %127, %124
  br label %135

135:                                              ; preds = %135, %134
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @cmdscanner(i32 %136)
  store i32 1, i32* %6, align 4
  br label %135
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @setprogname(i8*) #2

declare dso_local %struct.servent* @getservbyname(i8*, i8*) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i64 @getarg(i32, i32, i32, i8**, i32*) #2

declare dso_local i32 @usage(i32) #2

declare dso_local i32 @print_version(i32*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @isatty(i32) #2

declare dso_local i32 @fileno(i32) #2

declare dso_local %struct.passwd* @k_getpwuid(i32) #2

declare dso_local i32 @getuid(...) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #4

declare dso_local i32 @signal(i32, i32) #2

declare dso_local i64 @getprogname(...) #2

declare dso_local i32 @setpeer(i32, i8**) #2

declare dso_local i32 @cmdscanner(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
