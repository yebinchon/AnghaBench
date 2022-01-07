; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mount/extr_getmntopts.c_getmntopts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mount/extr_getmntopts.c_getmntopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mntopt = type { i32, i32, i64, i32* }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@getmnt_silent = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"-o %s: option not supported\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getmntopts(i8* %0, %struct.mntopt* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mntopt*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mntopt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.mntopt* %1, %struct.mntopt** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i8* @strdup(i8* %16)
  store i8* %17, i8** %13, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = call i32 @err(i32 1, i32* null)
  br label %21

21:                                               ; preds = %19, %4
  %22 = load i8*, i8** %13, align 8
  store i8* %22, i8** %12, align 8
  br label %23

23:                                               ; preds = %137, %21
  %24 = load i8*, i8** %12, align 8
  %25 = call i8* @strtok(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %12, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %138

27:                                               ; preds = %23
  %28 = load i8*, i8** %12, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 110
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load i8*, i8** %12, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 111
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  store i32 1, i32* %10, align 4
  %40 = load i8*, i8** %12, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  store i8* %41, i8** %12, align 8
  br label %43

42:                                               ; preds = %33, %27
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i8*, i8** %12, align 8
  %45 = call i8* @strchr(i8* %44, i8 signext 61)
  store i8* %45, i8** %14, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i8*, i8** %14, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %14, align 8
  store i8 0, i8* %50, align 1
  br label %51

51:                                               ; preds = %48, %43
  %52 = load %struct.mntopt*, %struct.mntopt** %6, align 8
  store %struct.mntopt* %52, %struct.mntopt** %9, align 8
  br label %53

53:                                               ; preds = %89, %51
  %54 = load %struct.mntopt*, %struct.mntopt** %9, align 8
  %55 = getelementptr inbounds %struct.mntopt, %struct.mntopt* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %92

58:                                               ; preds = %53
  %59 = load %struct.mntopt*, %struct.mntopt** %9, align 8
  %60 = getelementptr inbounds %struct.mntopt, %struct.mntopt* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @strlen(i32* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i8*, i8** %12, align 8
  %64 = load %struct.mntopt*, %struct.mntopt** %9, align 8
  %65 = getelementptr inbounds %struct.mntopt, %struct.mntopt* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i64 @strncasecmp(i8* %63, i32* %66, i32 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %58
  %71 = load i8*, i8** %12, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %70
  %79 = load i8*, i8** %12, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 61
  br i1 %85, label %86, label %87

86:                                               ; preds = %78, %70
  br label %92

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87, %58
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.mntopt*, %struct.mntopt** %9, align 8
  %91 = getelementptr inbounds %struct.mntopt, %struct.mntopt* %90, i32 1
  store %struct.mntopt* %91, %struct.mntopt** %9, align 8
  br label %53

92:                                               ; preds = %86, %53
  %93 = load %struct.mntopt*, %struct.mntopt** %9, align 8
  %94 = getelementptr inbounds %struct.mntopt, %struct.mntopt* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %129

97:                                               ; preds = %92
  %98 = load %struct.mntopt*, %struct.mntopt** %9, align 8
  %99 = getelementptr inbounds %struct.mntopt, %struct.mntopt* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32*, i32** %8, align 8
  br label %106

104:                                              ; preds = %97
  %105 = load i32*, i32** %7, align 8
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32* [ %103, %102 ], [ %105, %104 ]
  store i32* %107, i32** %15, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.mntopt*, %struct.mntopt** %9, align 8
  %110 = getelementptr inbounds %struct.mntopt, %struct.mntopt* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %108, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %106
  %114 = load %struct.mntopt*, %struct.mntopt** %9, align 8
  %115 = getelementptr inbounds %struct.mntopt, %struct.mntopt* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %15, align 8
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %116
  store i32 %119, i32* %117, align 4
  br label %128

120:                                              ; preds = %106
  %121 = load %struct.mntopt*, %struct.mntopt** %9, align 8
  %122 = getelementptr inbounds %struct.mntopt, %struct.mntopt* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = xor i32 %123, -1
  %125 = load i32*, i32** %15, align 8
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, %124
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %120, %113
  br label %136

129:                                              ; preds = %92
  %130 = load i32, i32* @getmnt_silent, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = load i8*, i8** %12, align 8
  %134 = call i32 @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %133)
  br label %135

135:                                              ; preds = %132, %129
  br label %136

136:                                              ; preds = %135, %128
  br label %137

137:                                              ; preds = %136
  store i8* null, i8** %12, align 8
  br label %23

138:                                              ; preds = %23
  %139 = load i8*, i8** %13, align 8
  %140 = call i32 @free(i8* %139)
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i64 @strncasecmp(i8*, i32*, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
