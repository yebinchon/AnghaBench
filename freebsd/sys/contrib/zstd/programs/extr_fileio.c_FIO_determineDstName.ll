; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_fileio.c_FIO_determineDstName.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_fileio.c_FIO_determineDstName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIO_determineDstName.dfnbCapacity = internal global i64 0, align 8
@FIO_determineDstName.dstFileNameBuffer = internal global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [118 x i8] c"zstd: %s: unknown suffix (%s expected). Can't derive the output file name. Specify it with -o dstFileName. Ignoring.\0A\00", align 1
@suffixListStr = common dso_local global i32 0, align 4
@suffixList = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c".tar\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"%s : not enough memory for dstFileName\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @FIO_determineDstName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @FIO_determineDstName(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i64 0, i64* %9, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %10, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @strrchr(i8* %16, i8 signext 46)
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* @suffixListStr, align 4
  %23 = call i32 @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.1, i64 0, i64 0), i8* %21, i32 %22)
  store i8* null, i8** %3, align 8
  br label %131

24:                                               ; preds = %2
  %25 = load i8*, i8** %12, align 8
  %26 = call i64 @strlen(i8* %25)
  store i64 %26, i64* %11, align 8
  %27 = load i8**, i8*** @suffixList, align 8
  store i8** %27, i8*** %13, align 8
  br label %28

28:                                               ; preds = %40, %24
  %29 = load i8**, i8*** %13, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i8**, i8*** %13, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = call i32 @strcmp(i8* %34, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  br label %43

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39
  %41 = load i8**, i8*** %13, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i32 1
  store i8** %42, i8*** %13, align 8
  br label %28

43:                                               ; preds = %38, %28
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp ule i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i8**, i8*** %13, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %47, %43
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* @suffixListStr, align 4
  %54 = call i32 @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.1, i64 0, i64 0), i8* %52, i32 %53)
  store i8* null, i8** %3, align 8
  br label %131

55:                                               ; preds = %47
  %56 = load i8**, i8*** %13, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 116
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i64 @strlen(i8* %63)
  store i64 %64, i64* %9, align 8
  br label %65

65:                                               ; preds = %62, %55
  %66 = load i8*, i8** %5, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load i8*, i8** %4, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = call i8* @FIO_createFilename_fromOutDir(i8* %69, i8* %70, i32 0)
  store i8* %71, i8** %7, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = call i64 @strlen(i8* %72)
  store i64 %73, i64* %10, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = icmp ne i8* %74, null
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  br label %78

78:                                               ; preds = %68, %65
  %79 = load i64, i64* @FIO_determineDstName.dfnbCapacity, align 8
  %80 = load i64, i64* %11, align 8
  %81 = add i64 %79, %80
  %82 = load i64, i64* %10, align 8
  %83 = add i64 %82, 1
  %84 = load i64, i64* %9, align 8
  %85 = add i64 %83, %84
  %86 = icmp ule i64 %81, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %78
  %88 = load i8*, i8** @FIO_determineDstName.dstFileNameBuffer, align 8
  %89 = call i32 @free(i8* %88)
  %90 = load i64, i64* %10, align 8
  %91 = add i64 %90, 20
  store i64 %91, i64* @FIO_determineDstName.dfnbCapacity, align 8
  %92 = load i64, i64* @FIO_determineDstName.dfnbCapacity, align 8
  %93 = call i64 @malloc(i64 %92)
  %94 = inttoptr i64 %93 to i8*
  store i8* %94, i8** @FIO_determineDstName.dstFileNameBuffer, align 8
  %95 = load i8*, i8** @FIO_determineDstName.dstFileNameBuffer, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %87
  %98 = load i32, i32* @errno, align 4
  %99 = call i32 @strerror(i32 %98)
  %100 = call i32 @EXM_THROW(i32 74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %97, %87
  br label %102

102:                                              ; preds = %101, %78
  %103 = load i8*, i8** @FIO_determineDstName.dstFileNameBuffer, align 8
  %104 = icmp ne i8* %103, null
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* %11, align 8
  %109 = sub i64 %107, %108
  store i64 %109, i64* %6, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %119

112:                                              ; preds = %102
  %113 = load i8*, i8** @FIO_determineDstName.dstFileNameBuffer, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = load i64, i64* %6, align 8
  %116 = call i32 @memcpy(i8* %113, i8* %114, i64 %115)
  %117 = load i8*, i8** %7, align 8
  %118 = call i32 @free(i8* %117)
  br label %124

119:                                              ; preds = %102
  %120 = load i8*, i8** @FIO_determineDstName.dstFileNameBuffer, align 8
  %121 = load i8*, i8** %4, align 8
  %122 = load i64, i64* %6, align 8
  %123 = call i32 @memcpy(i8* %120, i8* %121, i64 %122)
  br label %124

124:                                              ; preds = %119, %112
  %125 = load i8*, i8** @FIO_determineDstName.dstFileNameBuffer, align 8
  %126 = load i64, i64* %6, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  %128 = load i8*, i8** %8, align 8
  %129 = call i32 @strcpy(i8* %127, i8* %128)
  %130 = load i8*, i8** @FIO_determineDstName.dstFileNameBuffer, align 8
  store i8* %130, i8** %3, align 8
  br label %131

131:                                              ; preds = %124, %51, %20
  %132 = load i8*, i8** %3, align 8
  ret i8* %132
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @FIO_createFilename_fromOutDir(i8*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @EXM_THROW(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
