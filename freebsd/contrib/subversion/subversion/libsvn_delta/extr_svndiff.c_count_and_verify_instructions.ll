; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_svndiff.c_count_and_verify_instructions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_svndiff.c_count_and_verify_instructions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 }

@SVN_ERR_SVNDIFF_INVALID_OPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Invalid diff stream: insn %d cannot be decoded\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Invalid diff stream: insn %d has length zero\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Invalid diff stream: insn %d overflows the target view\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"Invalid diff stream: [src] insn %d overflows the source view\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"Invalid diff stream: [tgt] insn %d starts beyond the target view position\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"Invalid diff stream: [new] insn %d overflows the new data section\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Delta does not fill the target window\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Delta does not contain enough new data\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i8*, i64, i64, i64)* @count_and_verify_instructions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @count_and_verify_instructions(i32* %0, i8* %1, i8* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %106, %6
  %19 = load i8*, i8** %9, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %22, label %113

22:                                               ; preds = %18
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i8* @decode_instruction(%struct.TYPE_3__* %15, i8* %23, i8* %24)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i32, i32* @SVN_ERR_SVNDIFF_INVALID_OPS, align 4
  %30 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %14, align 4
  %32 = call i32* @svn_error_createf(i32 %29, i32* null, i32 %30, i32 %31)
  store i32* %32, i32** %7, align 8
  br label %133

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* @SVN_ERR_SVNDIFF_INVALID_OPS, align 4
  %39 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %14, align 4
  %41 = call i32* @svn_error_createf(i32 %38, i32* null, i32 %39, i32 %40)
  store i32* %41, i32** %7, align 8
  br label %133

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %16, align 8
  %47 = sub nsw i64 %45, %46
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load i32, i32* @SVN_ERR_SVNDIFF_INVALID_OPS, align 4
  %51 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* %14, align 4
  %53 = call i32* @svn_error_createf(i32 %50, i32* null, i32 %51, i32 %52)
  store i32* %53, i32** %7, align 8
  br label %133

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %106 [
    i32 129, label %59
    i32 128, label %78
    i32 130, label %89
  ]

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %62, %64
  %66 = icmp sgt i64 %61, %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %67, %59
  %73 = load i32, i32* @SVN_ERR_SVNDIFF_INVALID_OPS, align 4
  %74 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i32, i32* %14, align 4
  %76 = call i32* @svn_error_createf(i32 %73, i32* null, i32 %74, i32 %75)
  store i32* %76, i32** %7, align 8
  br label %133

77:                                               ; preds = %67
  br label %106

78:                                               ; preds = %56
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %16, align 8
  %82 = icmp sge i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i32, i32* @SVN_ERR_SVNDIFF_INVALID_OPS, align 4
  %85 = call i32 @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0))
  %86 = load i32, i32* %14, align 4
  %87 = call i32* @svn_error_createf(i32 %84, i32* null, i32 %85, i32 %86)
  store i32* %87, i32** %7, align 8
  br label %133

88:                                               ; preds = %78
  br label %106

89:                                               ; preds = %56
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* %17, align 8
  %94 = sub nsw i64 %92, %93
  %95 = icmp sgt i64 %91, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load i32, i32* @SVN_ERR_SVNDIFF_INVALID_OPS, align 4
  %98 = call i32 @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0))
  %99 = load i32, i32* %14, align 4
  %100 = call i32* @svn_error_createf(i32 %97, i32* null, i32 %98, i32 %99)
  store i32* %100, i32** %7, align 8
  br label %133

101:                                              ; preds = %89
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %17, align 8
  %105 = add nsw i64 %104, %103
  store i64 %105, i64* %17, align 8
  br label %106

106:                                              ; preds = %56, %101, %88, %77
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %16, align 8
  %110 = add nsw i64 %109, %108
  store i64 %110, i64* %16, align 8
  %111 = load i32, i32* %14, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %14, align 4
  br label %18

113:                                              ; preds = %18
  %114 = load i64, i64* %16, align 8
  %115 = load i64, i64* %12, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i32, i32* @SVN_ERR_SVNDIFF_INVALID_OPS, align 4
  %119 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %120 = call i32* @svn_error_create(i32 %118, i32* null, i32 %119)
  store i32* %120, i32** %7, align 8
  br label %133

121:                                              ; preds = %113
  %122 = load i64, i64* %17, align 8
  %123 = load i64, i64* %13, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load i32, i32* @SVN_ERR_SVNDIFF_INVALID_OPS, align 4
  %127 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %128 = call i32* @svn_error_create(i32 %126, i32* null, i32 %127)
  store i32* %128, i32** %7, align 8
  br label %133

129:                                              ; preds = %121
  %130 = load i32, i32* %14, align 4
  %131 = load i32*, i32** %8, align 8
  store i32 %130, i32* %131, align 4
  %132 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %132, i32** %7, align 8
  br label %133

133:                                              ; preds = %129, %125, %117, %96, %83, %72, %49, %37, %28
  %134 = load i32*, i32** %7, align 8
  ret i32* %134
}

declare dso_local i8* @decode_instruction(%struct.TYPE_3__*, i8*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
