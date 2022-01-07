; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_glob.c_glob0.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_glob.c_glob0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.glob_limit = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@GLOB_NOSPACE = common dso_local global i32 0, align 4
@EOS = common dso_local global i32 0, align 4
@NOT = common dso_local global i32 0, align 4
@RBRACKET = common dso_local global i32 0, align 4
@M_SET = common dso_local global i32 0, align 4
@M_NOT = common dso_local global i32 0, align 4
@RANGE = common dso_local global i32 0, align 4
@M_RNG = common dso_local global i32 0, align 4
@GLOB_MAGCHAR = common dso_local global i32 0, align 4
@M_END = common dso_local global i32 0, align 4
@M_ONE = common dso_local global i32 0, align 4
@M_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, %struct.glob_limit*, i8*)* @glob0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glob0(i32* %0, %struct.TYPE_6__* %1, %struct.glob_limit* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.glob_limit*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store %struct.glob_limit* %2, %struct.glob_limit** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i32, i32* @MAXPATHLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %15, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %16, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @MAXPATHLEN, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = call i32* @globtilde(i32* %22, i32* %21, i32 %23, %struct.TYPE_6__* %24)
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @E2BIG, align 4
  store i32 %29, i32* @errno, align 4
  %30 = load i32, i32* @GLOB_NOSPACE, align 4
  store i32 %30, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %185

31:                                               ; preds = %4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %12, align 8
  store i32* %21, i32** %13, align 8
  br label %35

35:                                               ; preds = %165, %31
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %10, align 8
  %38 = load i32, i32* %36, align 4
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* @EOS, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %166

41:                                               ; preds = %35
  %42 = load i32, i32* %14, align 4
  switch i32 %42, label %159 [
    i32 130, label %43
    i32 129, label %131
    i32 128, label %140
  ]

43:                                               ; preds = %41
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* @NOT, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %10, align 8
  br label %52

52:                                               ; preds = %49, %43
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @EOS, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load i32*, i32** %10, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* @RBRACKET, align 4
  %61 = call i32* @g_strchr(i32* %59, i32 %60)
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %57, %52
  %64 = load i32*, i32** %13, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %13, align 8
  store i32 130, i32* %64, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @NOT, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 -1
  store i32* %71, i32** %10, align 8
  br label %72

72:                                               ; preds = %69, %63
  br label %165

73:                                               ; preds = %57
  %74 = load i32, i32* @M_SET, align 4
  %75 = load i32*, i32** %13, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %13, align 8
  store i32 %74, i32* %75, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @NOT, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load i32, i32* @M_NOT, align 4
  %82 = load i32*, i32** %13, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %13, align 8
  store i32 %81, i32* %82, align 4
  br label %84

84:                                               ; preds = %80, %73
  %85 = load i32*, i32** %10, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %10, align 8
  %87 = load i32, i32* %85, align 4
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %116, %84
  %89 = load i32, i32* %14, align 4
  %90 = call i8* @CHAR(i32 %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load i32*, i32** %13, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %13, align 8
  store i32 %91, i32* %92, align 4
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @RANGE, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %115

98:                                               ; preds = %88
  %99 = load i32*, i32** %10, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* @RBRACKET, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %98
  %105 = load i32, i32* @M_RNG, align 4
  %106 = load i32*, i32** %13, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %13, align 8
  store i32 %105, i32* %106, align 4
  %108 = load i32, i32* %14, align 4
  %109 = call i8* @CHAR(i32 %108)
  %110 = ptrtoint i8* %109 to i32
  %111 = load i32*, i32** %13, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %13, align 8
  store i32 %110, i32* %111, align 4
  %113 = load i32*, i32** %10, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  store i32* %114, i32** %10, align 8
  br label %115

115:                                              ; preds = %104, %98, %88
  br label %116

116:                                              ; preds = %115
  %117 = load i32*, i32** %10, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %10, align 8
  %119 = load i32, i32* %117, align 4
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* @RBRACKET, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %88, label %122

122:                                              ; preds = %116
  %123 = load i32, i32* @GLOB_MAGCHAR, align 4
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  %128 = load i32, i32* @M_END, align 4
  %129 = load i32*, i32** %13, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %13, align 8
  store i32 %128, i32* %129, align 4
  br label %165

131:                                              ; preds = %41
  %132 = load i32, i32* @GLOB_MAGCHAR, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load i32, i32* @M_ONE, align 4
  %138 = load i32*, i32** %13, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %13, align 8
  store i32 %137, i32* %138, align 4
  br label %165

140:                                              ; preds = %41
  %141 = load i32, i32* @GLOB_MAGCHAR, align 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  %146 = load i32*, i32** %13, align 8
  %147 = icmp eq i32* %146, %21
  br i1 %147, label %154, label %148

148:                                              ; preds = %140
  %149 = load i32*, i32** %13, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 -1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @M_ALL, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %148, %140
  %155 = load i32, i32* @M_ALL, align 4
  %156 = load i32*, i32** %13, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %13, align 8
  store i32 %155, i32* %156, align 4
  br label %158

158:                                              ; preds = %154, %148
  br label %165

159:                                              ; preds = %41
  %160 = load i32, i32* %14, align 4
  %161 = call i8* @CHAR(i32 %160)
  %162 = ptrtoint i8* %161 to i32
  %163 = load i32*, i32** %13, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %13, align 8
  store i32 %162, i32* %163, align 4
  br label %165

165:                                              ; preds = %159, %158, %131, %122, %72
  br label %35

166:                                              ; preds = %35
  %167 = load i32, i32* @EOS, align 4
  %168 = load i32*, i32** %13, align 8
  store i32 %167, i32* %168, align 4
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %170 = load %struct.glob_limit*, %struct.glob_limit** %8, align 8
  %171 = call i32 @glob1(i32* %21, %struct.TYPE_6__* %169, %struct.glob_limit* %170)
  store i32 %171, i32* %11, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %166
  %174 = load i32, i32* %11, align 4
  store i32 %174, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %185

175:                                              ; preds = %166
  %176 = load i8*, i8** %9, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %184

178:                                              ; preds = %175
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %180 = load %struct.glob_limit*, %struct.glob_limit** %8, align 8
  %181 = load i64, i64* %12, align 8
  %182 = load i8*, i8** %9, align 8
  %183 = call i32 @globfinal(%struct.TYPE_6__* %179, %struct.glob_limit* %180, i64 %181, i8* %182)
  store i32 %183, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %185

184:                                              ; preds = %175
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %185

185:                                              ; preds = %184, %178, %173, %28
  %186 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %186)
  %187 = load i32, i32* %5, align 4
  ret i32 %187
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @globtilde(i32*, i32*, i32, %struct.TYPE_6__*) #2

declare dso_local i32* @g_strchr(i32*, i32) #2

declare dso_local i8* @CHAR(i32) #2

declare dso_local i32 @glob1(i32*, %struct.TYPE_6__*, %struct.glob_limit*) #2

declare dso_local i32 @globfinal(%struct.TYPE_6__*, %struct.glob_limit*, i64, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
