; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_duration.c_ldns_duration_create_from_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_duration.c_ldns_duration_create_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @ldns_duration_create_from_string(i8* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = call %struct.TYPE_5__* (...) @ldns_duration_create()
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %4, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %170

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %2, align 8
  br label %170

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = call i8* @strchr(i8* %20, i8 signext 80)
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = call i32 @ldns_duration_cleanup(%struct.TYPE_5__* %25)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %170

27:                                               ; preds = %19
  %28 = load i8*, i8** %3, align 8
  %29 = call i8* @strchr(i8* %28, i8 signext 84)
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = call i8* @strchr(i8* %30, i8 signext 89)
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = call i64 @atoi(i8* %36)
  %38 = inttoptr i64 %37 to i8*
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 6
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %6, align 8
  store i8* %41, i8** %3, align 8
  store i32 1, i32* %9, align 4
  br label %42

42:                                               ; preds = %34, %27
  %43 = load i8*, i8** %3, align 8
  %44 = call i8* @strchr(i8* %43, i8 signext 77)
  store i8* %44, i8** %6, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %70

47:                                               ; preds = %42
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load i8*, i8** %6, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = icmp ult i64 %55, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %50, %47
  %63 = load i8*, i8** %3, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = call i64 @atoi(i8* %64)
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 5
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** %6, align 8
  store i8* %69, i8** %3, align 8
  store i32 1, i32* %9, align 4
  br label %70

70:                                               ; preds = %62, %50, %42
  %71 = load i8*, i8** %3, align 8
  %72 = call i8* @strchr(i8* %71, i8 signext 68)
  store i8* %72, i8** %6, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load i8*, i8** %3, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = call i64 @atoi(i8* %77)
  %79 = inttoptr i64 %78 to i8*
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** %6, align 8
  store i8* %82, i8** %3, align 8
  store i32 1, i32* %9, align 4
  br label %83

83:                                               ; preds = %75, %70
  %84 = load i8*, i8** %7, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i8*, i8** %7, align 8
  store i8* %87, i8** %3, align 8
  store i32 1, i32* %9, align 4
  br label %88

88:                                               ; preds = %86, %83
  %89 = load i8*, i8** %3, align 8
  %90 = call i8* @strchr(i8* %89, i8 signext 72)
  store i8* %90, i8** %6, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = load i8*, i8** %7, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load i8*, i8** %3, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = call i64 @atoi(i8* %98)
  %100 = inttoptr i64 %99 to i8*
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 3
  store i8* %100, i8** %102, align 8
  %103 = load i8*, i8** %6, align 8
  store i8* %103, i8** %3, align 8
  store i32 1, i32* %9, align 4
  br label %104

104:                                              ; preds = %96, %93, %88
  %105 = load i8*, i8** %3, align 8
  %106 = call i8* @strrchr(i8* %105, i8 signext 77)
  store i8* %106, i8** %6, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %132

109:                                              ; preds = %104
  %110 = load i8*, i8** %7, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %132

112:                                              ; preds = %109
  %113 = load i8*, i8** %6, align 8
  %114 = load i8*, i8** %5, align 8
  %115 = ptrtoint i8* %113 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = load i8*, i8** %7, align 8
  %119 = load i8*, i8** %5, align 8
  %120 = ptrtoint i8* %118 to i64
  %121 = ptrtoint i8* %119 to i64
  %122 = sub i64 %120, %121
  %123 = icmp ugt i64 %117, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %112
  %125 = load i8*, i8** %3, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = call i64 @atoi(i8* %126)
  %128 = inttoptr i64 %127 to i8*
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 2
  store i8* %128, i8** %130, align 8
  %131 = load i8*, i8** %6, align 8
  store i8* %131, i8** %3, align 8
  store i32 1, i32* %9, align 4
  br label %132

132:                                              ; preds = %124, %112, %109, %104
  %133 = load i8*, i8** %3, align 8
  %134 = call i8* @strchr(i8* %133, i8 signext 83)
  store i8* %134, i8** %6, align 8
  %135 = load i8*, i8** %6, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %148

137:                                              ; preds = %132
  %138 = load i8*, i8** %7, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %148

140:                                              ; preds = %137
  %141 = load i8*, i8** %3, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  %143 = call i64 @atoi(i8* %142)
  %144 = inttoptr i64 %143 to i8*
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  store i8* %144, i8** %146, align 8
  %147 = load i8*, i8** %6, align 8
  store i8* %147, i8** %3, align 8
  store i32 1, i32* %9, align 4
  br label %148

148:                                              ; preds = %140, %137, %132
  %149 = load i8*, i8** %3, align 8
  %150 = call i8* @strchr(i8* %149, i8 signext 87)
  store i8* %150, i8** %8, align 8
  %151 = load i8*, i8** %8, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %168

153:                                              ; preds = %148
  %154 = load i32, i32* %9, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %158 = call i32 @ldns_duration_cleanup(%struct.TYPE_5__* %157)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %170

159:                                              ; preds = %153
  %160 = load i8*, i8** %3, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 1
  %162 = call i64 @atoi(i8* %161)
  %163 = inttoptr i64 %162 to i8*
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  store i8* %163, i8** %165, align 8
  %166 = load i8*, i8** %8, align 8
  store i8* %166, i8** %3, align 8
  br label %167

167:                                              ; preds = %159
  br label %168

168:                                              ; preds = %167, %148
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %169, %struct.TYPE_5__** %2, align 8
  br label %170

170:                                              ; preds = %168, %156, %24, %17, %13
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %171
}

declare dso_local %struct.TYPE_5__* @ldns_duration_create(...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @ldns_duration_cleanup(%struct.TYPE_5__*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
