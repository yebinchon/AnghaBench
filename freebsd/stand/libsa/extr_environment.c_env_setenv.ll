; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_environment.c_env_setenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_environment.c_env_setenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_var = type { {}*, i8*, i32, %struct.env_var*, %struct.env_var*, i8*, i32 }

@EV_NOHOOK = common dso_local global i32 0, align 4
@EV_DYNAMIC = common dso_local global i32 0, align 4
@environ = common dso_local global %struct.env_var* null, align 8
@EV_VOLATILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @env_setenv(i8* %0, i32 %1, i8* %2, i32 (%struct.env_var*, i32, i8*)* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32 (%struct.env_var*, i32, i8*)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.env_var*, align 8
  %13 = alloca %struct.env_var*, align 8
  %14 = alloca %struct.env_var*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 (%struct.env_var*, i32, i8*)* %3, i32 (%struct.env_var*, i32, i8*)** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call %struct.env_var* @env_getenv(i8* %15)
  store %struct.env_var* %16, %struct.env_var** %12, align 8
  %17 = icmp ne %struct.env_var* %16, null
  br i1 %17, label %18, label %64

18:                                               ; preds = %5
  %19 = load %struct.env_var*, %struct.env_var** %12, align 8
  %20 = getelementptr inbounds %struct.env_var, %struct.env_var* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.env_var*, i32, i8*)**
  %22 = load i32 (%struct.env_var*, i32, i8*)*, i32 (%struct.env_var*, i32, i8*)** %21, align 8
  %23 = icmp ne i32 (%struct.env_var*, i32, i8*)* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @EV_NOHOOK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %24
  %30 = load %struct.env_var*, %struct.env_var** %12, align 8
  %31 = getelementptr inbounds %struct.env_var, %struct.env_var* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i32 (%struct.env_var*, i32, i8*)**
  %33 = load i32 (%struct.env_var*, i32, i8*)*, i32 (%struct.env_var*, i32, i8*)** %32, align 8
  %34 = load %struct.env_var*, %struct.env_var** %12, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 %33(%struct.env_var* %34, i32 %35, i8* %36)
  store i32 %37, i32* %6, align 4
  br label %173

38:                                               ; preds = %24, %18
  %39 = load %struct.env_var*, %struct.env_var** %12, align 8
  %40 = getelementptr inbounds %struct.env_var, %struct.env_var* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.env_var*, %struct.env_var** %12, align 8
  %45 = getelementptr inbounds %struct.env_var, %struct.env_var* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @EV_DYNAMIC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load %struct.env_var*, %struct.env_var** %12, align 8
  %52 = getelementptr inbounds %struct.env_var, %struct.env_var* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @free(i8* %53)
  br label %55

55:                                               ; preds = %50, %43, %38
  %56 = load %struct.env_var*, %struct.env_var** %12, align 8
  %57 = getelementptr inbounds %struct.env_var, %struct.env_var* %56, i32 0, i32 1
  store i8* null, i8** %57, align 8
  %58 = load i32, i32* @EV_DYNAMIC, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.env_var*, %struct.env_var** %12, align 8
  %61 = getelementptr inbounds %struct.env_var, %struct.env_var* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %146

64:                                               ; preds = %5
  %65 = call %struct.env_var* @malloc(i32 56)
  store %struct.env_var* %65, %struct.env_var** %12, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i8* @strdup(i8* %66)
  %68 = load %struct.env_var*, %struct.env_var** %12, align 8
  %69 = getelementptr inbounds %struct.env_var, %struct.env_var* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  %70 = load %struct.env_var*, %struct.env_var** %12, align 8
  %71 = getelementptr inbounds %struct.env_var, %struct.env_var* %70, i32 0, i32 1
  store i8* null, i8** %71, align 8
  %72 = load %struct.env_var*, %struct.env_var** %12, align 8
  %73 = getelementptr inbounds %struct.env_var, %struct.env_var* %72, i32 0, i32 2
  store i32 0, i32* %73, align 8
  %74 = load i32 (%struct.env_var*, i32, i8*)*, i32 (%struct.env_var*, i32, i8*)** %10, align 8
  %75 = load %struct.env_var*, %struct.env_var** %12, align 8
  %76 = getelementptr inbounds %struct.env_var, %struct.env_var* %75, i32 0, i32 0
  %77 = bitcast {}** %76 to i32 (%struct.env_var*, i32, i8*)**
  store i32 (%struct.env_var*, i32, i8*)* %74, i32 (%struct.env_var*, i32, i8*)** %77, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.env_var*, %struct.env_var** %12, align 8
  %80 = getelementptr inbounds %struct.env_var, %struct.env_var* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 8
  %81 = load %struct.env_var*, %struct.env_var** %12, align 8
  %82 = getelementptr inbounds %struct.env_var, %struct.env_var* %81, i32 0, i32 3
  store %struct.env_var* null, %struct.env_var** %82, align 8
  %83 = load %struct.env_var*, %struct.env_var** %12, align 8
  %84 = getelementptr inbounds %struct.env_var, %struct.env_var* %83, i32 0, i32 4
  store %struct.env_var* null, %struct.env_var** %84, align 8
  store %struct.env_var* null, %struct.env_var** %14, align 8
  %85 = load %struct.env_var*, %struct.env_var** @environ, align 8
  store %struct.env_var* %85, %struct.env_var** %13, align 8
  br label %86

86:                                               ; preds = %124, %64
  %87 = load %struct.env_var*, %struct.env_var** %13, align 8
  %88 = icmp ne %struct.env_var* %87, null
  br i1 %88, label %89, label %129

89:                                               ; preds = %86
  %90 = load %struct.env_var*, %struct.env_var** %12, align 8
  %91 = getelementptr inbounds %struct.env_var, %struct.env_var* %90, i32 0, i32 5
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.env_var*, %struct.env_var** %13, align 8
  %94 = getelementptr inbounds %struct.env_var, %struct.env_var* %93, i32 0, i32 5
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @strcmp(i8* %92, i8* %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %123

98:                                               ; preds = %89
  %99 = load %struct.env_var*, %struct.env_var** %13, align 8
  %100 = getelementptr inbounds %struct.env_var, %struct.env_var* %99, i32 0, i32 3
  %101 = load %struct.env_var*, %struct.env_var** %100, align 8
  %102 = icmp ne %struct.env_var* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load %struct.env_var*, %struct.env_var** %12, align 8
  %105 = load %struct.env_var*, %struct.env_var** %13, align 8
  %106 = getelementptr inbounds %struct.env_var, %struct.env_var* %105, i32 0, i32 3
  %107 = load %struct.env_var*, %struct.env_var** %106, align 8
  %108 = getelementptr inbounds %struct.env_var, %struct.env_var* %107, i32 0, i32 4
  store %struct.env_var* %104, %struct.env_var** %108, align 8
  br label %111

109:                                              ; preds = %98
  %110 = load %struct.env_var*, %struct.env_var** %12, align 8
  store %struct.env_var* %110, %struct.env_var** @environ, align 8
  br label %111

111:                                              ; preds = %109, %103
  %112 = load %struct.env_var*, %struct.env_var** %13, align 8
  %113 = load %struct.env_var*, %struct.env_var** %12, align 8
  %114 = getelementptr inbounds %struct.env_var, %struct.env_var* %113, i32 0, i32 4
  store %struct.env_var* %112, %struct.env_var** %114, align 8
  %115 = load %struct.env_var*, %struct.env_var** %13, align 8
  %116 = getelementptr inbounds %struct.env_var, %struct.env_var* %115, i32 0, i32 3
  %117 = load %struct.env_var*, %struct.env_var** %116, align 8
  %118 = load %struct.env_var*, %struct.env_var** %12, align 8
  %119 = getelementptr inbounds %struct.env_var, %struct.env_var* %118, i32 0, i32 3
  store %struct.env_var* %117, %struct.env_var** %119, align 8
  %120 = load %struct.env_var*, %struct.env_var** %12, align 8
  %121 = load %struct.env_var*, %struct.env_var** %13, align 8
  %122 = getelementptr inbounds %struct.env_var, %struct.env_var* %121, i32 0, i32 3
  store %struct.env_var* %120, %struct.env_var** %122, align 8
  br label %129

123:                                              ; preds = %89
  br label %124

124:                                              ; preds = %123
  %125 = load %struct.env_var*, %struct.env_var** %13, align 8
  store %struct.env_var* %125, %struct.env_var** %14, align 8
  %126 = load %struct.env_var*, %struct.env_var** %13, align 8
  %127 = getelementptr inbounds %struct.env_var, %struct.env_var* %126, i32 0, i32 4
  %128 = load %struct.env_var*, %struct.env_var** %127, align 8
  store %struct.env_var* %128, %struct.env_var** %13, align 8
  br label %86

129:                                              ; preds = %111, %86
  %130 = load %struct.env_var*, %struct.env_var** %13, align 8
  %131 = icmp eq %struct.env_var* %130, null
  br i1 %131, label %132, label %145

132:                                              ; preds = %129
  %133 = load %struct.env_var*, %struct.env_var** %14, align 8
  %134 = icmp eq %struct.env_var* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = load %struct.env_var*, %struct.env_var** %12, align 8
  store %struct.env_var* %136, %struct.env_var** @environ, align 8
  br label %144

137:                                              ; preds = %132
  %138 = load %struct.env_var*, %struct.env_var** %12, align 8
  %139 = load %struct.env_var*, %struct.env_var** %14, align 8
  %140 = getelementptr inbounds %struct.env_var, %struct.env_var* %139, i32 0, i32 4
  store %struct.env_var* %138, %struct.env_var** %140, align 8
  %141 = load %struct.env_var*, %struct.env_var** %14, align 8
  %142 = load %struct.env_var*, %struct.env_var** %12, align 8
  %143 = getelementptr inbounds %struct.env_var, %struct.env_var* %142, i32 0, i32 3
  store %struct.env_var* %141, %struct.env_var** %143, align 8
  br label %144

144:                                              ; preds = %137, %135
  br label %145

145:                                              ; preds = %144, %129
  br label %146

146:                                              ; preds = %145, %55
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @EV_VOLATILE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %161

151:                                              ; preds = %146
  %152 = load i8*, i8** %9, align 8
  %153 = call i8* @strdup(i8* %152)
  %154 = load %struct.env_var*, %struct.env_var** %12, align 8
  %155 = getelementptr inbounds %struct.env_var, %struct.env_var* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  %156 = load i32, i32* @EV_DYNAMIC, align 4
  %157 = load %struct.env_var*, %struct.env_var** %12, align 8
  %158 = getelementptr inbounds %struct.env_var, %struct.env_var* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  br label %172

161:                                              ; preds = %146
  %162 = load i8*, i8** %9, align 8
  %163 = load %struct.env_var*, %struct.env_var** %12, align 8
  %164 = getelementptr inbounds %struct.env_var, %struct.env_var* %163, i32 0, i32 1
  store i8* %162, i8** %164, align 8
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @EV_DYNAMIC, align 4
  %167 = and i32 %165, %166
  %168 = load %struct.env_var*, %struct.env_var** %12, align 8
  %169 = getelementptr inbounds %struct.env_var, %struct.env_var* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 8
  br label %172

172:                                              ; preds = %161, %151
  store i32 0, i32* %6, align 4
  br label %173

173:                                              ; preds = %172, %29
  %174 = load i32, i32* %6, align 4
  ret i32 %174
}

declare dso_local %struct.env_var* @env_getenv(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.env_var* @malloc(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
