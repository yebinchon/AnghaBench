; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_makeshell.c_emit_match_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_makeshell.c_emit_match_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i64* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }

@NUL = common dso_local global i8 0, align 1
@zOptionPartName = common dso_local global i8* null, align 8
@zOptionFullName = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_7__*, %struct.TYPE_6__*)* @emit_match_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_match_expr(i8* %0, %struct.TYPE_7__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  store i32 2, i32* %8, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = zext i32 %18 to i64
  %20 = icmp uge i64 %19, 31
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %148

22:                                               ; preds = %3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %10, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %102, %22
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %11, align 4
  %32 = icmp sgt i32 %30, 0
  br i1 %32, label %33, label %105

33:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = icmp eq %struct.TYPE_7__* %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %39 = call i64 @SKIP_OPT(%struct.TYPE_7__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %33
  br label %102

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %59, %42
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = call i64 @UPPER(i8 signext %50)
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* %12, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @UPPER(i8 signext %56)
  %58 = icmp eq i64 %51, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %43
  %60 = load i32, i32* %12, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %43

62:                                               ; preds = %43
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ugt i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %66, %62
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = icmp eq i64* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %102

74:                                               ; preds = %68
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %92, %74
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i8
  %84 = call i64 @toupper(i8 zeroext %83)
  %85 = load i8*, i8** %4, align 8
  %86 = load i32, i32* %12, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = call i64 @toupper(i8 zeroext %89)
  %91 = icmp eq i64 %84, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %75
  %93 = load i32, i32* %12, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %75

95:                                               ; preds = %75
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ugt i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %99, %95
  br label %102

102:                                              ; preds = %101, %73, %41
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 1
  store %struct.TYPE_7__* %104, %struct.TYPE_7__** %10, align 8
  br label %29

105:                                              ; preds = %29
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %147

109:                                              ; preds = %105
  %110 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %111 = load i32, i32* %8, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  store i8* %113, i8** %13, align 8
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %14, align 4
  %115 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %116 = load i8*, i8** %4, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @memcpy(i8* %115, i8* %116, i32 %117)
  br label %119

119:                                              ; preds = %145, %109
  %120 = load i8, i8* @NUL, align 1
  %121 = load i8*, i8** %13, align 8
  store i8 %120, i8* %121, align 1
  %122 = load i8*, i8** @zOptionPartName, align 8
  %123 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %124 = call i32 @printf(i8* %122, i8* %123)
  %125 = load i8*, i8** %4, align 8
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %14, align 4
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = load i8*, i8** %13, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %13, align 8
  store i8 %130, i8* %131, align 1
  %133 = load i8*, i8** %4, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = load i8, i8* @NUL, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %138, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %119
  %143 = load i8, i8* @NUL, align 1
  %144 = load i8*, i8** %13, align 8
  store i8 %143, i8* %144, align 1
  br label %146

145:                                              ; preds = %119
  br label %119

146:                                              ; preds = %142
  br label %147

147:                                              ; preds = %146, %105
  br label %148

148:                                              ; preds = %147, %21
  %149 = load i8*, i8** @zOptionFullName, align 8
  %150 = load i8*, i8** %4, align 8
  %151 = call i32 @printf(i8* %149, i8* %150)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @SKIP_OPT(%struct.TYPE_7__*) #1

declare dso_local i64 @UPPER(i8 signext) #1

declare dso_local i64 @toupper(i8 zeroext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
