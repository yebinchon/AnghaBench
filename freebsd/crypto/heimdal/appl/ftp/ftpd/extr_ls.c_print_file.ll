; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ls.c_print_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ls.c_print_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileinfo = type { i32, i32*, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32 }

@LS_INODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%*d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@LS_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%-*s\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%*s, %*s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" -> %s\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.fileinfo*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @print_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_file(i32* %0, i32 %1, %struct.fileinfo* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.fileinfo*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store i32 %1, i32* %14, align 4
  store %struct.fileinfo* %2, %struct.fileinfo** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %25 = load %struct.fileinfo*, %struct.fileinfo** %15, align 8
  %26 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %12
  br label %146

30:                                               ; preds = %12
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* @LS_INODE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* %16, align 4
  %38 = load %struct.fileinfo*, %struct.fileinfo** %15, align 8
  %39 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %38, i32 0, i32 11
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32*, i8*, ...) @sec_fprintf2(i32* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 (i32*, i8*, ...) @sec_fprintf2(i32* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %35, %30
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @LS_SIZE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load i32*, i32** %13, align 8
  %51 = load i32, i32* %17, align 4
  %52 = load %struct.fileinfo*, %struct.fileinfo** %15, align 8
  %53 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i32*, i8*, ...) @sec_fprintf2(i32* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54)
  %56 = load i32*, i32** %13, align 8
  %57 = call i32 (i32*, i8*, ...) @sec_fprintf2(i32* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %49, %44
  %59 = load i32*, i32** %13, align 8
  %60 = load %struct.fileinfo*, %struct.fileinfo** %15, align 8
  %61 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32*, i8*, ...) @sec_fprintf2(i32* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32*, i32** %13, align 8
  %65 = call i32 (i32*, i8*, ...) @sec_fprintf2(i32* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* %18, align 4
  %68 = load %struct.fileinfo*, %struct.fileinfo** %15, align 8
  %69 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i32*, i8*, ...) @sec_fprintf2(i32* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %70)
  %72 = load i32*, i32** %13, align 8
  %73 = call i32 (i32*, i8*, ...) @sec_fprintf2(i32* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32*, i32** %13, align 8
  %75 = load i32, i32* %19, align 4
  %76 = load %struct.fileinfo*, %struct.fileinfo** %15, align 8
  %77 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32*, i8*, ...) @sec_fprintf2(i32* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %75, i32 %78)
  %80 = load i32*, i32** %13, align 8
  %81 = call i32 (i32*, i8*, ...) @sec_fprintf2(i32* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32*, i32** %13, align 8
  %83 = load i32, i32* %20, align 4
  %84 = load %struct.fileinfo*, %struct.fileinfo** %15, align 8
  %85 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i32*, i8*, ...) @sec_fprintf2(i32* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %83, i32 %86)
  %88 = load i32*, i32** %13, align 8
  %89 = call i32 (i32*, i8*, ...) @sec_fprintf2(i32* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %90 = load %struct.fileinfo*, %struct.fileinfo** %15, align 8
  %91 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %90, i32 0, i32 5
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %110

94:                                               ; preds = %58
  %95 = load %struct.fileinfo*, %struct.fileinfo** %15, align 8
  %96 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %110

99:                                               ; preds = %94
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* %22, align 4
  %102 = load %struct.fileinfo*, %struct.fileinfo** %15, align 8
  %103 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %102, i32 0, i32 5
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %23, align 4
  %106 = load %struct.fileinfo*, %struct.fileinfo** %15, align 8
  %107 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 (i32*, i8*, ...) @sec_fprintf2(i32* %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %101, i32* %104, i32 %105, i32* %108)
  br label %117

110:                                              ; preds = %94, %58
  %111 = load i32*, i32** %13, align 8
  %112 = load i32, i32* %21, align 4
  %113 = load %struct.fileinfo*, %struct.fileinfo** %15, align 8
  %114 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32*, i8*, ...) @sec_fprintf2(i32* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %112, i32 %115)
  br label %117

117:                                              ; preds = %110, %99
  %118 = load i32*, i32** %13, align 8
  %119 = call i32 (i32*, i8*, ...) @sec_fprintf2(i32* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %120 = load i32*, i32** %13, align 8
  %121 = load i32, i32* %24, align 4
  %122 = load %struct.fileinfo*, %struct.fileinfo** %15, align 8
  %123 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 (i32*, i8*, ...) @sec_fprintf2(i32* %120, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %121, i32 %124)
  %126 = load i32*, i32** %13, align 8
  %127 = call i32 (i32*, i8*, ...) @sec_fprintf2(i32* %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %128 = load i32*, i32** %13, align 8
  %129 = load %struct.fileinfo*, %struct.fileinfo** %15, align 8
  %130 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 (i32*, i8*, ...) @sec_fprintf2(i32* %128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %131)
  %133 = load %struct.fileinfo*, %struct.fileinfo** %15, align 8
  %134 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %117
  %138 = load i32*, i32** %13, align 8
  %139 = load %struct.fileinfo*, %struct.fileinfo** %15, align 8
  %140 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 (i32*, i8*, ...) @sec_fprintf2(i32* %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %137, %117
  %144 = load i32*, i32** %13, align 8
  %145 = call i32 (i32*, i8*, ...) @sec_fprintf2(i32* %144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %29
  ret void
}

declare dso_local i32 @sec_fprintf2(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
