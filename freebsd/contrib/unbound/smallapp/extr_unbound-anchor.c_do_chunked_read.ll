; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_do_chunked_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_do_chunked_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"do_chunked_read\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"chunk header: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"could not parse chunk header\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"chunk len: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @do_chunked_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_chunked_read(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8, align 1
  store i32* %0, i32** %3, align 8
  %9 = call i32 (...) @BIO_s_mem()
  %10 = call i32* @BIO_new(i32 %9)
  store i32* %10, i32** %7, align 8
  %11 = load i32, i32* @verb, align 4
  %12 = icmp sge i32 %11, 3
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @verb, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18
  store i32* null, i32** %2, align 8
  br label %126

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %122, %24
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %28 = call i64 @read_ssl_line(i32* %26, i8* %27, i32 1024)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %123

30:                                               ; preds = %25
  %31 = load i32, i32* @verb, align 4
  %32 = icmp sge i32 %31, 2
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %38 = call i32 @parse_chunk_header(i8* %37, i64* %5)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @BIO_free(i32* %41)
  %43 = load i32, i32* @verb, align 4
  %44 = icmp sge i32 %43, 3
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %40
  store i32* null, i32** %2, align 8
  br label %126

48:                                               ; preds = %36
  %49 = load i32, i32* @verb, align 4
  %50 = icmp sge i32 %49, 2
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i64, i64* %5, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i64, i64* %5, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %86

58:                                               ; preds = %55
  store i8 0, i8* %8, align 1
  br label %59

59:                                               ; preds = %68, %58
  %60 = load i32*, i32** %3, align 8
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %62 = call i64 @read_ssl_line(i32* %60, i8* %61, i32 1024)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @BIO_free(i32* %65)
  store i32* null, i32** %2, align 8
  br label %126

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67
  %69 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %70 = call i64 @strlen(i8* %69)
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %59, label %72

72:                                               ; preds = %68
  %73 = load i32*, i32** %7, align 8
  %74 = call i64 @BIO_write(i32* %73, i8* %8, i32 1)
  %75 = icmp sle i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = load i32, i32* @verb, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %76
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @BIO_free(i32* %82)
  store i32* null, i32** %2, align 8
  br label %126

84:                                               ; preds = %72
  %85 = load i32*, i32** %7, align 8
  store i32* %85, i32** %2, align 8
  br label %126

86:                                               ; preds = %55
  %87 = load i32*, i32** %3, align 8
  %88 = load i64, i64* %5, align 8
  %89 = call i8* @read_data_chunk(i32* %87, i64 %88)
  store i8* %89, i8** %6, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %86
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @BIO_free(i32* %93)
  store i32* null, i32** %2, align 8
  br label %126

95:                                               ; preds = %86
  %96 = load i32*, i32** %7, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = load i64, i64* %5, align 8
  %99 = trunc i64 %98 to i32
  %100 = call i64 @BIO_write(i32* %96, i8* %97, i32 %99)
  %101 = icmp sle i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %95
  %103 = load i32, i32* @verb, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %102
  %108 = load i8*, i8** %6, align 8
  %109 = call i32 @free(i8* %108)
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @BIO_free(i32* %110)
  store i32* null, i32** %2, align 8
  br label %126

112:                                              ; preds = %95
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @free(i8* %113)
  %115 = load i32*, i32** %3, align 8
  %116 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %117 = call i64 @read_ssl_line(i32* %115, i8* %116, i32 1024)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %112
  %120 = load i32*, i32** %7, align 8
  %121 = call i32 @BIO_free(i32* %120)
  store i32* null, i32** %2, align 8
  br label %126

122:                                              ; preds = %112
  br label %25

123:                                              ; preds = %25
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 @BIO_free(i32* %124)
  store i32* null, i32** %2, align 8
  br label %126

126:                                              ; preds = %123, %119, %107, %92, %84, %81, %64, %47, %23
  %127 = load i32*, i32** %2, align 8
  ret i32* %127
}

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @read_ssl_line(i32*, i8*, i32) #1

declare dso_local i32 @parse_chunk_header(i8*, i64*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @BIO_write(i32*, i8*, i32) #1

declare dso_local i8* @read_data_chunk(i32*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
