; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_key.c_v_key_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_key.c_v_key_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i8*, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@v_key_name.hexdigit = internal constant [17 x i8] c"0123456789abcdef\00", align 16
@v_key_name.octdigit = internal constant [9 x i8] c"01234567\00", align 1
@O_PRINT = common dso_local global i32 0, align 4
@O_NOPRINT = common dso_local global i32 0, align 4
@O_OCTAL = common dso_local global i32 0, align 4
@IC_IE_TO_UTF16 = common dso_local global i64 0, align 8
@MB_CUR_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @v_key_name(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %3, align 8
  br label %186

21:                                               ; preds = %11, %2
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i64, i64* %5, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = ptrtoint i8* %26 to i8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i64 1, i64* %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 %27, i8* %31, align 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8 0, i8* %44, align 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = load i32, i32* @O_PRINT, align 4
  %47 = call i8* @O_STR(%struct.TYPE_8__* %45, i32 %46)
  store i8* %47, i8** %8, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %21
  %50 = load i8*, i8** %8, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i32* @strstr(i8* %50, i8* %53)
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %175

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %21
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = load i32, i32* @O_NOPRINT, align 4
  %61 = call i8* @O_STR(%struct.TYPE_8__* %59, i32 %60)
  store i8* %61, i8** %8, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load i8*, i8** %8, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i32* @strstr(i8* %64, i8* %67)
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %79

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %58
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = load i64, i64* %5, align 8
  %75 = call i64 @CAN_PRINT(%struct.TYPE_8__* %73, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %175

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78, %70
  %80 = load i32, i32* %6, align 4
  %81 = call i64 @iscntrl(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %107

83:                                               ; preds = %79
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 32
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %87, 127
  br i1 %88, label %89, label %107

89:                                               ; preds = %86, %83
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  store i8 94, i8* %93, align 1
  %94 = load i32, i32* %6, align 4
  %95 = icmp eq i32 %94, 127
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %100

97:                                               ; preds = %89
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 64, %98
  br label %100

100:                                              ; preds = %97, %96
  %101 = phi i32 [ 63, %96 ], [ %99, %97 ]
  %102 = trunc i32 %101 to i8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  store i8 %102, i8* %106, align 1
  store i64 2, i64* %7, align 8
  br label %175

107:                                              ; preds = %86, %79
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %109 = load i32, i32* @O_OCTAL, align 4
  %110 = call i64 @O_ISSET(%struct.TYPE_8__* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %146

112:                                              ; preds = %107
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  store i8 92, i8* %116, align 1
  %117 = load i32, i32* %6, align 4
  %118 = and i32 %117, 192
  %119 = ashr i32 %118, 6
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [9 x i8], [9 x i8]* @v_key_name.octdigit, i64 0, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  store i8 %122, i8* %126, align 1
  %127 = load i32, i32* %6, align 4
  %128 = and i32 %127, 56
  %129 = ashr i32 %128, 3
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [9 x i8], [9 x i8]* @v_key_name.octdigit, i64 0, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 2
  store i8 %132, i8* %136, align 1
  %137 = load i32, i32* %6, align 4
  %138 = and i32 %137, 7
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [9 x i8], [9 x i8]* @v_key_name.octdigit, i64 0, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 3
  store i8 %141, i8* %145, align 1
  br label %174

146:                                              ; preds = %107
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 0
  store i8 92, i8* %150, align 1
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 1
  store i8 120, i8* %154, align 1
  %155 = load i32, i32* %6, align 4
  %156 = and i32 %155, 240
  %157 = ashr i32 %156, 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [17 x i8], [17 x i8]* @v_key_name.hexdigit, i64 0, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 2
  store i8 %160, i8* %164, align 1
  %165 = load i32, i32* %6, align 4
  %166 = and i32 %165, 15
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [17 x i8], [17 x i8]* @v_key_name.hexdigit, i64 0, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 3
  store i8 %169, i8* %173, align 1
  br label %174

174:                                              ; preds = %146, %112
  store i64 4, i64* %7, align 8
  br label %175

175:                                              ; preds = %174, %100, %77, %56
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = load i64, i64* %7, align 8
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 2
  store i64 %179, i64* %181, align 8
  %182 = getelementptr inbounds i8, i8* %178, i64 %179
  store i8 0, i8* %182, align 1
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = load i8*, i8** %184, align 8
  store i8* %185, i8** %3, align 8
  br label %186

186:                                              ; preds = %175, %17
  %187 = load i8*, i8** %3, align 8
  ret i8* %187
}

declare dso_local i8* @O_STR(%struct.TYPE_8__*, i32) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i64 @CAN_PRINT(%struct.TYPE_8__*, i64) #1

declare dso_local i64 @iscntrl(i32) #1

declare dso_local i64 @O_ISSET(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
