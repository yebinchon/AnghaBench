; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_hextolfp.c_hextolfp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_hextolfp.c_hextolfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@hextolfp.digits = internal global i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [23 x i8] c"0123456789abcdefABCDEF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hextolfp(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %6, align 8
  br label %12

12:                                               ; preds = %17, %2
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = call i64 @isspace(i8 zeroext %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %6, align 8
  br label %12

20:                                               ; preds = %12
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %7, align 8
  br label %22

22:                                               ; preds = %66, %20
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = icmp slt i64 %32, 8
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i8*, i8** @hextolfp.digits, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = call i8* @strchr(i8* %35, i8 signext %37)
  store i8* %38, i8** %10, align 8
  %39 = icmp ne i8* %38, null
  br label %40

40:                                               ; preds = %34, %27, %22
  %41 = phi i1 [ false, %27 ], [ false, %22 ], [ %39, %34 ]
  br i1 %41, label %42, label %72

42:                                               ; preds = %40
  %43 = load i32, i32* %8, align 4
  %44 = shl i32 %43, 4
  store i32 %44, i32* %8, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** @hextolfp.digits, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = icmp sgt i64 %49, 15
  br i1 %50, label %51, label %59

51:                                               ; preds = %42
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** @hextolfp.digits, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = sub nsw i64 %56, 6
  %58 = trunc i64 %57 to i32
  br label %66

59:                                               ; preds = %42
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** @hextolfp.digits, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = trunc i64 %64 to i32
  br label %66

66:                                               ; preds = %59, %51
  %67 = phi i32 [ %58, %51 ], [ %65, %59 ]
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %6, align 8
  br label %22

72:                                               ; preds = %40
  %73 = load i8*, i8** %6, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = icmp slt i64 %77, 8
  br i1 %78, label %82, label %79

79:                                               ; preds = %72
  %80 = load i8*, i8** %10, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %79, %72
  store i32 0, i32* %3, align 4
  br label %172

83:                                               ; preds = %79
  %84 = load i8*, i8** %6, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 46
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %6, align 8
  br label %91

91:                                               ; preds = %88, %83
  %92 = load i8*, i8** %6, align 8
  store i8* %92, i8** %7, align 8
  br label %93

93:                                               ; preds = %137, %91
  %94 = load i8*, i8** %6, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %93
  %99 = load i8*, i8** %6, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = icmp slt i64 %103, 8
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load i8*, i8** @hextolfp.digits, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = load i8, i8* %107, align 1
  %109 = call i8* @strchr(i8* %106, i8 signext %108)
  store i8* %109, i8** %10, align 8
  %110 = icmp ne i8* %109, null
  br label %111

111:                                              ; preds = %105, %98, %93
  %112 = phi i1 [ false, %98 ], [ false, %93 ], [ %110, %105 ]
  br i1 %112, label %113, label %143

113:                                              ; preds = %111
  %114 = load i32, i32* %9, align 4
  %115 = shl i32 %114, 4
  store i32 %115, i32* %9, align 4
  %116 = load i8*, i8** %10, align 8
  %117 = load i8*, i8** @hextolfp.digits, align 8
  %118 = ptrtoint i8* %116 to i64
  %119 = ptrtoint i8* %117 to i64
  %120 = sub i64 %118, %119
  %121 = icmp sgt i64 %120, 15
  br i1 %121, label %122, label %130

122:                                              ; preds = %113
  %123 = load i8*, i8** %10, align 8
  %124 = load i8*, i8** @hextolfp.digits, align 8
  %125 = ptrtoint i8* %123 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = sub nsw i64 %127, 6
  %129 = trunc i64 %128 to i32
  br label %137

130:                                              ; preds = %113
  %131 = load i8*, i8** %10, align 8
  %132 = load i8*, i8** @hextolfp.digits, align 8
  %133 = ptrtoint i8* %131 to i64
  %134 = ptrtoint i8* %132 to i64
  %135 = sub i64 %133, %134
  %136 = trunc i64 %135 to i32
  br label %137

137:                                              ; preds = %130, %122
  %138 = phi i32 [ %129, %122 ], [ %136, %130 ]
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %9, align 4
  %141 = load i8*, i8** %6, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %6, align 8
  br label %93

143:                                              ; preds = %111
  %144 = load i8*, i8** %6, align 8
  %145 = load i8*, i8** %7, align 8
  %146 = ptrtoint i8* %144 to i64
  %147 = ptrtoint i8* %145 to i64
  %148 = sub i64 %146, %147
  %149 = icmp slt i64 %148, 8
  br i1 %149, label %153, label %150

150:                                              ; preds = %143
  %151 = load i8*, i8** %10, align 8
  %152 = icmp eq i8* %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %150, %143
  store i32 0, i32* %3, align 4
  br label %172

154:                                              ; preds = %150
  %155 = load i8*, i8** %6, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = load i8*, i8** %6, align 8
  %161 = load i8, i8* %160, align 1
  %162 = call i64 @isspace(i8 zeroext %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %159
  store i32 0, i32* %3, align 4
  br label %172

165:                                              ; preds = %159, %154
  %166 = load i32, i32* %8, align 4
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 4
  %169 = load i32, i32* %9, align 4
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  store i32 1, i32* %3, align 4
  br label %172

172:                                              ; preds = %165, %164, %153, %82
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
