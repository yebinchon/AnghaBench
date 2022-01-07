; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_mod_search_hints.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_mod_search_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moduledir = type { i32, i32, i32* }
%struct.mod_depend = type { i32, i32, i32 }

@kld_ext_list = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.moduledir*, i8*, %struct.mod_depend*)* @mod_search_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mod_search_hints(%struct.moduledir* %0, i8* %1, %struct.mod_depend* %2) #0 {
  %4 = alloca %struct.moduledir*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mod_depend*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.moduledir* %0, %struct.moduledir** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.mod_depend* %2, %struct.mod_depend** %6, align 8
  %20 = load %struct.moduledir*, %struct.moduledir** %4, align 8
  %21 = call i32 @moduledir_readhints(%struct.moduledir* %20)
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strlen(i8* %22)
  store i32 %23, i32* %18, align 4
  store i32 0, i32* %16, align 4
  store i8* null, i8** %11, align 8
  store i32 0, i32* %13, align 4
  %24 = load %struct.moduledir*, %struct.moduledir** %4, align 8
  %25 = getelementptr inbounds %struct.moduledir, %struct.moduledir* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %151

29:                                               ; preds = %3
  %30 = load %struct.moduledir*, %struct.moduledir** %4, align 8
  %31 = getelementptr inbounds %struct.moduledir, %struct.moduledir* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load %struct.moduledir*, %struct.moduledir** %4, align 8
  %35 = getelementptr inbounds %struct.moduledir, %struct.moduledir* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  store i32* %38, i32** %9, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32* null, i32** %7, align 8
  store i32* null, i32** %10, align 8
  br label %39

39:                                               ; preds = %121, %29
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = icmp ult i32* %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %16, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i1 [ false, %39 ], [ %46, %43 ]
  br i1 %48, label %49, label %127

49:                                               ; preds = %47
  %50 = load i32*, i32** %8, align 8
  store i32* %50, i32** %12, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %12, align 8
  %53 = load i32, i32* %51, align 4
  store i32 %53, i32* %19, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %12, align 8
  %56 = load i32, i32* %54, align 4
  store i32 %56, i32* %17, align 4
  %57 = load i32*, i32** %12, align 8
  store i32* %57, i32** %7, align 8
  %58 = load i32, i32* %17, align 4
  switch i32 %58, label %120 [
    i32 128, label %59
  ]

59:                                               ; preds = %49
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %7, align 8
  %62 = load i32, i32* %60, align 4
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %18, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %59
  %67 = load i32*, i32** %7, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @bcmp(i32* %67, i8* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66, %59
  br label %121

73:                                               ; preds = %66
  %74 = load i32, i32* %15, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32* %77, i32** %7, align 8
  %78 = load %struct.moduledir*, %struct.moduledir** %4, align 8
  %79 = getelementptr inbounds %struct.moduledir, %struct.moduledir* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @INT_ALIGN(i32* %80, i32* %81)
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %17, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  store i32* %86, i32** %7, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %7, align 8
  %89 = load i32, i32* %87, align 4
  store i32 %89, i32* %15, align 4
  %90 = load %struct.mod_depend*, %struct.mod_depend** %6, align 8
  %91 = icmp eq %struct.mod_depend* %90, null
  br i1 %91, label %98, label %92

92:                                               ; preds = %73
  %93 = load i32, i32* %17, align 4
  %94 = load %struct.mod_depend*, %struct.mod_depend** %6, align 8
  %95 = getelementptr inbounds %struct.mod_depend, %struct.mod_depend* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %93, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92, %73
  store i32 1, i32* %16, align 4
  br label %121

99:                                               ; preds = %92
  %100 = load i32, i32* %17, align 4
  %101 = load %struct.mod_depend*, %struct.mod_depend** %6, align 8
  %102 = getelementptr inbounds %struct.mod_depend, %struct.mod_depend* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp sge i32 %100, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %99
  %106 = load i32, i32* %17, align 4
  %107 = load %struct.mod_depend*, %struct.mod_depend** %6, align 8
  %108 = getelementptr inbounds %struct.mod_depend, %struct.mod_depend* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp sle i32 %106, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %105
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i32, i32* %17, align 4
  store i32 %116, i32* %13, align 4
  %117 = load i32*, i32** %7, align 8
  store i32* %117, i32** %10, align 8
  %118 = load i32, i32* %15, align 4
  store i32 %118, i32* %14, align 4
  br label %119

119:                                              ; preds = %115, %111, %105, %99
  br label %121

120:                                              ; preds = %49
  br label %121

121:                                              ; preds = %120, %119, %98, %72
  %122 = load i32, i32* %19, align 4
  %123 = sext i32 %122 to i64
  %124 = add i64 %123, 4
  %125 = load i32*, i32** %8, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 %124
  store i32* %126, i32** %8, align 8
  br label %39

127:                                              ; preds = %47
  %128 = load i32, i32* %16, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %127
  %131 = load %struct.moduledir*, %struct.moduledir** %4, align 8
  %132 = getelementptr inbounds %struct.moduledir, %struct.moduledir* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %7, align 8
  %135 = bitcast i32* %134 to i8*
  %136 = load i32, i32* %15, align 4
  %137 = call i8* @file_lookup(i32 %133, i8* %135, i32 %136, i32* null)
  store i8* %137, i8** %11, align 8
  br label %150

138:                                              ; preds = %127
  %139 = load i32*, i32** %10, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %149

141:                                              ; preds = %138
  %142 = load %struct.moduledir*, %struct.moduledir** %4, align 8
  %143 = getelementptr inbounds %struct.moduledir, %struct.moduledir* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %10, align 8
  %146 = bitcast i32* %145 to i8*
  %147 = load i32, i32* %14, align 4
  %148 = call i8* @file_lookup(i32 %144, i8* %146, i32 %147, i32* null)
  store i8* %148, i8** %11, align 8
  br label %149

149:                                              ; preds = %141, %138
  br label %150

150:                                              ; preds = %149, %130
  br label %151

151:                                              ; preds = %150, %28
  %152 = load i32, i32* %16, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %168, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %13, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %168, label %157

157:                                              ; preds = %154
  %158 = load i8*, i8** %11, align 8
  %159 = icmp eq i8* %158, null
  br i1 %159, label %160, label %168

160:                                              ; preds = %157
  %161 = load %struct.moduledir*, %struct.moduledir** %4, align 8
  %162 = getelementptr inbounds %struct.moduledir, %struct.moduledir* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i8*, i8** %5, align 8
  %165 = load i32, i32* %18, align 4
  %166 = load i32*, i32** @kld_ext_list, align 8
  %167 = call i8* @file_lookup(i32 %163, i8* %164, i32 %165, i32* %166)
  store i8* %167, i8** %11, align 8
  br label %168

168:                                              ; preds = %160, %157, %154, %151
  %169 = load i8*, i8** %11, align 8
  ret i8* %169
}

declare dso_local i32 @moduledir_readhints(%struct.moduledir*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @bcmp(i32*, i8*, i32) #1

declare dso_local i32 @INT_ALIGN(i32*, i32*) #1

declare dso_local i8* @file_lookup(i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
