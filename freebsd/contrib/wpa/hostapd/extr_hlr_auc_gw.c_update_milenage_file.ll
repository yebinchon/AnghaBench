; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hlr_auc_gw.c_update_milenage_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hlr_auc_gw.c_update_milenage_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.milenage_parameters = type { i8*, i32, i32, i32, i32, %struct.milenage_parameters* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Could not open Milenage data file '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s.new\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Could not write Milenage data file '%s'\0A\00", align 1
@milenage_db = common dso_local global %struct.milenage_parameters* null, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%s.bak\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @update_milenage_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_milenage_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [500 x i8], align 16
  %6 = alloca [500 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.milenage_parameters*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %11 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %12 = getelementptr inbounds i8, i8* %11, i64 500
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  br label %203

20:                                               ; preds = %1
  %21 = getelementptr inbounds [500 x i8], [500 x i8]* %5, i64 0, i64 0
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @snprintf(i8* %21, i32 500, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  %24 = getelementptr inbounds [500 x i8], [500 x i8]* %5, i64 0, i64 0
  %25 = call i32* @fopen(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %25, i32** %4, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = getelementptr inbounds [500 x i8], [500 x i8]* %5, i64 0, i64 0
  %30 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @fclose(i32* %31)
  br label %203

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %175, %33
  %35 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %36 = load i32*, i32** %3, align 8
  %37 = call i64 @fgets(i8* %35, i32 500, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %179

39:                                               ; preds = %34
  %40 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 499
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %42 = call i8* @strchr(i8* %41, i8 signext 32)
  store i8* %42, i8** %7, align 8
  %43 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %44 = load i8, i8* %43, align 16
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 35
  br i1 %46, label %57, label %47

47:                                               ; preds = %39
  %48 = load i8*, i8** %7, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = icmp sge i64 %55, 20
  br i1 %56, label %57, label %58

57:                                               ; preds = %50, %47, %39
  br label %175

58:                                               ; preds = %50
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  store i64 %63, i64* %10, align 8
  %64 = load %struct.milenage_parameters*, %struct.milenage_parameters** @milenage_db, align 8
  store %struct.milenage_parameters* %64, %struct.milenage_parameters** %9, align 8
  br label %65

65:                                               ; preds = %87, %58
  %66 = load %struct.milenage_parameters*, %struct.milenage_parameters** %9, align 8
  %67 = icmp ne %struct.milenage_parameters* %66, null
  br i1 %67, label %68, label %91

68:                                               ; preds = %65
  %69 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %70 = load %struct.milenage_parameters*, %struct.milenage_parameters** %9, align 8
  %71 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i64 @strncmp(i8* %69, i8* %72, i64 %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %68
  %77 = load %struct.milenage_parameters*, %struct.milenage_parameters** %9, align 8
  %78 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i64, i64* %10, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %91

86:                                               ; preds = %76, %68
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.milenage_parameters*, %struct.milenage_parameters** %9, align 8
  %89 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %88, i32 0, i32 5
  %90 = load %struct.milenage_parameters*, %struct.milenage_parameters** %89, align 8
  store %struct.milenage_parameters* %90, %struct.milenage_parameters** %9, align 8
  br label %65

91:                                               ; preds = %85, %65
  %92 = load %struct.milenage_parameters*, %struct.milenage_parameters** %9, align 8
  %93 = icmp ne %struct.milenage_parameters* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  br label %175

95:                                               ; preds = %91
  %96 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  store i8* %96, i8** %7, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = trunc i64 %102 to i32
  %104 = load %struct.milenage_parameters*, %struct.milenage_parameters** %9, align 8
  %105 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @snprintf(i8* %97, i32 %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %106)
  %108 = load i8*, i8** %7, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8* %110, i8** %7, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = trunc i64 %116 to i32
  %118 = load %struct.milenage_parameters*, %struct.milenage_parameters** %9, align 8
  %119 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @wpa_snprintf_hex(i8* %111, i32 %117, i32 %120, i32 16)
  %122 = load i8*, i8** %7, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  store i8* %124, i8** %7, align 8
  %125 = load i8*, i8** %7, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %7, align 8
  store i8 32, i8* %125, align 1
  %127 = load i8*, i8** %7, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = load i8*, i8** %7, align 8
  %130 = ptrtoint i8* %128 to i64
  %131 = ptrtoint i8* %129 to i64
  %132 = sub i64 %130, %131
  %133 = trunc i64 %132 to i32
  %134 = load %struct.milenage_parameters*, %struct.milenage_parameters** %9, align 8
  %135 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @wpa_snprintf_hex(i8* %127, i32 %133, i32 %136, i32 16)
  %138 = load i8*, i8** %7, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  store i8* %140, i8** %7, align 8
  %141 = load i8*, i8** %7, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %7, align 8
  store i8 32, i8* %141, align 1
  %143 = load i8*, i8** %7, align 8
  %144 = load i8*, i8** %8, align 8
  %145 = load i8*, i8** %7, align 8
  %146 = ptrtoint i8* %144 to i64
  %147 = ptrtoint i8* %145 to i64
  %148 = sub i64 %146, %147
  %149 = trunc i64 %148 to i32
  %150 = load %struct.milenage_parameters*, %struct.milenage_parameters** %9, align 8
  %151 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @wpa_snprintf_hex(i8* %143, i32 %149, i32 %152, i32 2)
  %154 = load i8*, i8** %7, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  store i8* %156, i8** %7, align 8
  %157 = load i8*, i8** %7, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %7, align 8
  store i8 32, i8* %157, align 1
  %159 = load i8*, i8** %7, align 8
  %160 = load i8*, i8** %8, align 8
  %161 = load i8*, i8** %7, align 8
  %162 = ptrtoint i8* %160 to i64
  %163 = ptrtoint i8* %161 to i64
  %164 = sub i64 %162, %163
  %165 = trunc i64 %164 to i32
  %166 = load %struct.milenage_parameters*, %struct.milenage_parameters** %9, align 8
  %167 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @wpa_snprintf_hex(i8* %159, i32 %165, i32 %168, i32 6)
  %170 = load i8*, i8** %7, align 8
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i8, i8* %170, i64 %171
  store i8* %172, i8** %7, align 8
  %173 = load i8*, i8** %7, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %7, align 8
  store i8 10, i8* %173, align 1
  br label %175

175:                                              ; preds = %95, %94, %57
  %176 = load i32*, i32** %4, align 8
  %177 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %178 = call i32 @fprintf(i32* %176, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %177)
  br label %34

179:                                              ; preds = %34
  %180 = load i32*, i32** %4, align 8
  %181 = call i32 @fclose(i32* %180)
  %182 = load i32*, i32** %3, align 8
  %183 = call i32 @fclose(i32* %182)
  %184 = getelementptr inbounds [500 x i8], [500 x i8]* %5, i64 0, i64 0
  %185 = load i8*, i8** %2, align 8
  %186 = call i32 @snprintf(i8* %184, i32 500, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %185)
  %187 = load i8*, i8** %2, align 8
  %188 = getelementptr inbounds [500 x i8], [500 x i8]* %5, i64 0, i64 0
  %189 = call i64 @rename(i8* %187, i8* %188)
  %190 = icmp slt i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %179
  %192 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %203

193:                                              ; preds = %179
  %194 = getelementptr inbounds [500 x i8], [500 x i8]* %5, i64 0, i64 0
  %195 = load i8*, i8** %2, align 8
  %196 = call i32 @snprintf(i8* %194, i32 500, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %195)
  %197 = getelementptr inbounds [500 x i8], [500 x i8]* %5, i64 0, i64 0
  %198 = load i8*, i8** %2, align 8
  %199 = call i64 @rename(i8* %197, i8* %198)
  %200 = icmp slt i64 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %193
  %202 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %203

203:                                              ; preds = %17, %28, %191, %201, %193
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @wpa_snprintf_hex(i8*, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i64 @rename(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
