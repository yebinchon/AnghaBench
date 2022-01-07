; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_openssl.c_help_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_openssl.c_help_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32* }
%struct.TYPE_6__ = type { i32, i32 }

@help_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Usage: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Standard commands\00", align 1
@FT_none = common dso_local global i64 0, align 8
@functions = common dso_local global %struct.TYPE_5__* null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@FT_md = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [68 x i8] c"\0AMessage Digest commands (see the `dgst' command for more details)\0A\00", align 1
@FT_cipher = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [59 x i8] c"\0ACipher commands (see the `enc' command for more details)\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%-*s\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @help_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__, align 4
  %13 = alloca [3 x i8*], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = load i32, i32* @help_options, align 4
  %17 = call i8* @opt_init(i32 %14, i8** %15, i32 %16)
  store i8* %17, i8** %10, align 8
  br label %18

18:                                               ; preds = %30, %2
  %19 = call i32 (...) @opt_next()
  store i32 %19, i32* %11, align 4
  %20 = icmp ne i32 %19, 130
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i32, i32* %11, align 4
  switch i32 %22, label %30 [
    i32 129, label %23
    i32 130, label %23
    i32 128, label %27
  ]

23:                                               ; preds = %21, %21
  %24 = load i32, i32* @bio_err, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 (i32, i8*, ...) @BIO_printf(i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %25)
  store i32 1, i32* %3, align 4
  br label %117

27:                                               ; preds = %21
  %28 = load i32, i32* @help_options, align 4
  %29 = call i32 @opt_help(i32 %28)
  store i32 0, i32* %3, align 4
  br label %117

30:                                               ; preds = %21
  br label %18

31:                                               ; preds = %18
  %32 = call i32 (...) @opt_num_rest()
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = call i8** (...) @opt_rest()
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 0
  store i8* %37, i8** %38, align 16
  %39 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %39, align 8
  %40 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 2
  store i8* null, i8** %40, align 16
  %41 = call i32 (...) @prog_init()
  %42 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 0
  %43 = call i32 @do_cmd(i32 %41, i32 2, i8** %42)
  store i32 %43, i32* %3, align 4
  br label %117

44:                                               ; preds = %31
  %45 = call i32 (...) @opt_num_rest()
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* @bio_err, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 (i32, i8*, ...) @BIO_printf(i32 %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  store i32 1, i32* %3, align 4
  br label %117

51:                                               ; preds = %44
  %52 = call i32 @calculate_columns(%struct.TYPE_6__* %12)
  %53 = load i32, i32* @bio_err, align 4
  %54 = call i32 (i32, i8*, ...) @BIO_printf(i32 %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  %55 = load i64, i64* @FT_none, align 8
  store i64 %55, i64* %9, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @functions, align 8
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %6, align 8
  br label %57

57:                                               ; preds = %111, %51
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %114

62:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = srem i32 %63, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* @bio_err, align 4
  %71 = call i32 (i32, i8*, ...) @BIO_printf(i32 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %72

72:                                               ; preds = %69, %62
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %9, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %103

78:                                               ; preds = %72
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %9, align 8
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* @bio_err, align 4
  %86 = call i32 (i32, i8*, ...) @BIO_printf(i32 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %78
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* @FT_md, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  store i32 1, i32* %7, align 4
  %92 = load i32, i32* @bio_err, align 4
  %93 = call i32 (i32, i8*, ...) @BIO_printf(i32 %92, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0))
  br label %102

94:                                               ; preds = %87
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* @FT_cipher, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  store i32 1, i32* %7, align 4
  %99 = load i32, i32* @bio_err, align 4
  %100 = call i32 (i32, i8*, ...) @BIO_printf(i32 %99, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %94
  br label %102

102:                                              ; preds = %101, %91
  br label %103

103:                                              ; preds = %102, %72
  %104 = load i32, i32* @bio_err, align 4
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 (i32, i8*, ...) @BIO_printf(i32 %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %106, i32* %109)
  br label %111

111:                                              ; preds = %103
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 1
  store %struct.TYPE_5__* %113, %struct.TYPE_5__** %6, align 8
  br label %57

114:                                              ; preds = %57
  %115 = load i32, i32* @bio_err, align 4
  %116 = call i32 (i32, i8*, ...) @BIO_printf(i32 %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %114, %47, %34, %27, %23
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i32 @opt_num_rest(...) #1

declare dso_local i8** @opt_rest(...) #1

declare dso_local i32 @do_cmd(i32, i32, i8**) #1

declare dso_local i32 @prog_init(...) #1

declare dso_local i32 @calculate_columns(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
