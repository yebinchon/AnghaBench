; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_mbo_ap.c_mbo_ap_get_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_mbo_ap.c_mbo_ap_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.mbo_non_pref_chan_info*, i32 }
%struct.mbo_non_pref_chan_info = type { i64, i32*, i32, i32, i32, %struct.mbo_non_pref_chan_info* }

@.str = private unnamed_addr constant [18 x i8] c"mbo_cell_capa=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"non_pref_chan[%u]=%u:%u:%u:\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%u%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbo_ap_get_info(%struct.sta_info* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mbo_non_pref_chan_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %9, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %20 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %187

24:                                               ; preds = %3
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %33 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %25, i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* %10, align 4
  %43 = call i64 @os_snprintf_error(i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %24
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %187

52:                                               ; preds = %24
  %53 = load i32, i32* %10, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %8, align 8
  %57 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %58 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %57, i32 0, i32 0
  %59 = load %struct.mbo_non_pref_chan_info*, %struct.mbo_non_pref_chan_info** %58, align 8
  store %struct.mbo_non_pref_chan_info* %59, %struct.mbo_non_pref_chan_info** %11, align 8
  br label %60

60:                                               ; preds = %176, %52
  %61 = load %struct.mbo_non_pref_chan_info*, %struct.mbo_non_pref_chan_info** %11, align 8
  %62 = icmp ne %struct.mbo_non_pref_chan_info* %61, null
  br i1 %62, label %63, label %180

63:                                               ; preds = %60
  %64 = load i8*, i8** %8, align 8
  store i8* %64, i8** %14, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.mbo_non_pref_chan_info*, %struct.mbo_non_pref_chan_info** %11, align 8
  %74 = getelementptr inbounds %struct.mbo_non_pref_chan_info, %struct.mbo_non_pref_chan_info* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.mbo_non_pref_chan_info*, %struct.mbo_non_pref_chan_info** %11, align 8
  %77 = getelementptr inbounds %struct.mbo_non_pref_chan_info, %struct.mbo_non_pref_chan_info* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.mbo_non_pref_chan_info*, %struct.mbo_non_pref_chan_info** %11, align 8
  %80 = getelementptr inbounds %struct.mbo_non_pref_chan_info, %struct.mbo_non_pref_chan_info* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %65, i32 %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %75, i32 %78, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %13, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %13, align 4
  %85 = load i8*, i8** %9, align 8
  %86 = load i8*, i8** %14, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = trunc i64 %89 to i32
  %91 = load i32, i32* %10, align 4
  %92 = call i64 @os_snprintf_error(i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %63
  br label %180

95:                                               ; preds = %63
  %96 = load i32, i32* %10, align 4
  %97 = load i8*, i8** %14, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %14, align 8
  store i64 0, i64* %12, align 8
  br label %100

100:                                              ; preds = %144, %95
  %101 = load i64, i64* %12, align 8
  %102 = load %struct.mbo_non_pref_chan_info*, %struct.mbo_non_pref_chan_info** %11, align 8
  %103 = getelementptr inbounds %struct.mbo_non_pref_chan_info, %struct.mbo_non_pref_chan_info* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ult i64 %101, %104
  br i1 %105, label %106, label %147

106:                                              ; preds = %100
  %107 = load i8*, i8** %14, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = load i8*, i8** %14, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = trunc i64 %112 to i32
  %114 = load %struct.mbo_non_pref_chan_info*, %struct.mbo_non_pref_chan_info** %11, align 8
  %115 = getelementptr inbounds %struct.mbo_non_pref_chan_info, %struct.mbo_non_pref_chan_info* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* %12, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i64, i64* %12, align 8
  %121 = add i64 %120, 1
  %122 = load %struct.mbo_non_pref_chan_info*, %struct.mbo_non_pref_chan_info** %11, align 8
  %123 = getelementptr inbounds %struct.mbo_non_pref_chan_info, %struct.mbo_non_pref_chan_info* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ult i64 %121, %124
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %128 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %107, i32 %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %119, i8* %127)
  store i32 %128, i32* %10, align 4
  %129 = load i8*, i8** %9, align 8
  %130 = load i8*, i8** %14, align 8
  %131 = ptrtoint i8* %129 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = trunc i64 %133 to i32
  %135 = load i32, i32* %10, align 4
  %136 = call i64 @os_snprintf_error(i32 %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %106
  store i8* null, i8** %14, align 8
  br label %147

139:                                              ; preds = %106
  %140 = load i32, i32* %10, align 4
  %141 = load i8*, i8** %14, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  store i8* %143, i8** %14, align 8
  br label %144

144:                                              ; preds = %139
  %145 = load i64, i64* %12, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %12, align 8
  br label %100

147:                                              ; preds = %138, %100
  %148 = load i8*, i8** %14, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %147
  br label %180

151:                                              ; preds = %147
  %152 = load i8*, i8** %14, align 8
  %153 = load i8*, i8** %9, align 8
  %154 = load i8*, i8** %14, align 8
  %155 = ptrtoint i8* %153 to i64
  %156 = ptrtoint i8* %154 to i64
  %157 = sub i64 %155, %156
  %158 = trunc i64 %157 to i32
  %159 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %152, i32 %158, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 %159, i32* %10, align 4
  %160 = load i8*, i8** %9, align 8
  %161 = load i8*, i8** %14, align 8
  %162 = ptrtoint i8* %160 to i64
  %163 = ptrtoint i8* %161 to i64
  %164 = sub i64 %162, %163
  %165 = trunc i64 %164 to i32
  %166 = load i32, i32* %10, align 4
  %167 = call i64 @os_snprintf_error(i32 %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %151
  br label %180

170:                                              ; preds = %151
  %171 = load i32, i32* %10, align 4
  %172 = load i8*, i8** %14, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  store i8* %174, i8** %14, align 8
  %175 = load i8*, i8** %14, align 8
  store i8* %175, i8** %8, align 8
  br label %176

176:                                              ; preds = %170
  %177 = load %struct.mbo_non_pref_chan_info*, %struct.mbo_non_pref_chan_info** %11, align 8
  %178 = getelementptr inbounds %struct.mbo_non_pref_chan_info, %struct.mbo_non_pref_chan_info* %177, i32 0, i32 5
  %179 = load %struct.mbo_non_pref_chan_info*, %struct.mbo_non_pref_chan_info** %178, align 8
  store %struct.mbo_non_pref_chan_info* %179, %struct.mbo_non_pref_chan_info** %11, align 8
  br label %60

180:                                              ; preds = %169, %150, %94, %60
  %181 = load i8*, i8** %8, align 8
  %182 = load i8*, i8** %6, align 8
  %183 = ptrtoint i8* %181 to i64
  %184 = ptrtoint i8* %182 to i64
  %185 = sub i64 %183, %184
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %180, %45, %23
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i32 @os_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
