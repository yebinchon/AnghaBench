; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pam_modules/pam_passwdqc/extr_passwdqc_random.c__passwdqc_random.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pam_modules/pam_passwdqc/extr_passwdqc_random.c__passwdqc_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@_passwdqc_random.output = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@_passwdqc_wordset_4k = common dso_local global i8** null, align 8
@SEPARATORS = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_passwdqc_random(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x i8], align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %159

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 %19, 12
  %21 = add nsw i32 %20, 14
  %22 = sdiv i32 %21, 15
  %23 = add nsw i32 1, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 11
  %26 = sdiv i32 %25, 12
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = mul nsw i32 %30, 7
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = icmp uge i64 %34, 256
  br i1 %35, label %42, label %36

36:                                               ; preds = %18
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %18
  store i8* null, i8** %2, align 8
  br label %159

43:                                               ; preds = %36
  %44 = load i32, i32* @O_RDONLY, align 4
  %45 = call i32 @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i8* null, i8** %2, align 8
  br label %159

48:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %148, %48
  %50 = load i32, i32* %11, align 4
  %51 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %52 = call i32 @read_loop(i32 %50, i8* %51, i32 2)
  %53 = sext i32 %52 to i64
  %54 = icmp ne i64 %53, 2
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @close(i32 %56)
  store i8* null, i8** %2, align 8
  br label %159

58:                                               ; preds = %49
  %59 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, 15
  %63 = shl i32 %62, 8
  %64 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = or i32 %63, %66
  store i32 %67, i32* %7, align 4
  %68 = load i8**, i8*** @_passwdqc_wordset_4k, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %9, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = call i8* @memchr(i8* %73, i8 signext 0, i32 6)
  store i8* %74, i8** %10, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %58
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 6
  store i8* %79, i8** %10, align 8
  br label %80

80:                                               ; preds = %77, %58
  %81 = load i32, i32* %8, align 4
  %82 = zext i32 %81 to i64
  %83 = load i8*, i8** %10, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = add nsw i64 %82, %87
  %89 = icmp uge i64 %88, 255
  br i1 %89, label %90, label %93

90:                                               ; preds = %80
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @close(i32 %91)
  store i8* null, i8** %2, align 8
  br label %159

93:                                               ; preds = %80
  %94 = load i32, i32* %8, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds [256 x i8], [256 x i8]* @_passwdqc_random.output, i64 0, i64 %95
  %97 = load i8*, i8** %9, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = trunc i64 %102 to i32
  %104 = call i32 @memcpy(i8* %96, i8* %97, i32 %103)
  %105 = load i8*, i8** %10, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = ptrtoint i8* %105 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  %110 = load i32, i32* %8, align 4
  %111 = zext i32 %110 to i64
  %112 = add nsw i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %4, align 4
  %115 = sub nsw i32 %114, 12
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %138

118:                                              ; preds = %93
  %119 = load i32, i32* %4, align 4
  %120 = icmp sgt i32 %119, 3
  br i1 %120, label %121, label %138

121:                                              ; preds = %118
  %122 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = and i32 %124, 112
  %126 = ashr i32 %125, 4
  store i32 %126, i32* %7, align 4
  %127 = load i8*, i8** @SEPARATORS, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = load i32, i32* %8, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %8, align 4
  %134 = zext i32 %132 to i64
  %135 = getelementptr inbounds [256 x i8], [256 x i8]* @_passwdqc_random.output, i64 0, i64 %134
  store i8 %131, i8* %135, align 1
  %136 = load i32, i32* %4, align 4
  %137 = sub nsw i32 %136, 3
  store i32 %137, i32* %4, align 4
  br label %147

138:                                              ; preds = %118, %93
  %139 = load i32, i32* %4, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load i32, i32* %8, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %8, align 4
  %144 = zext i32 %142 to i64
  %145 = getelementptr inbounds [256 x i8], [256 x i8]* @_passwdqc_random.output, i64 0, i64 %144
  store i8 32, i8* %145, align 1
  br label %146

146:                                              ; preds = %141, %138
  br label %147

147:                                              ; preds = %146, %121
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %4, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %49, label %151

151:                                              ; preds = %148
  %152 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %153 = call i32 @memset(i8* %152, i32 0, i32 2)
  %154 = load i32, i32* %8, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds [256 x i8], [256 x i8]* @_passwdqc_random.output, i64 0, i64 %155
  store i8 0, i8* %156, align 1
  %157 = load i32, i32* %11, align 4
  %158 = call i32 @close(i32 %157)
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @_passwdqc_random.output, i64 0, i64 0), i8** %2, align 8
  br label %159

159:                                              ; preds = %151, %90, %55, %47, %42, %17
  %160 = load i8*, i8** %2, align 8
  ret i8* %160
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @read_loop(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
