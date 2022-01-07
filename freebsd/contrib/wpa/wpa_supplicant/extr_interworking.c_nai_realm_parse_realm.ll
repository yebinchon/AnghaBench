; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_nai_realm_parse_realm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_nai_realm_parse_realm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nai_realm = type { i32, i32*, i32*, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"No room for NAI Realm Data fixed fields\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"No room for NAI Realm Data (len=%u; left=%u)\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"No room for NAI Realm (len=%u; left=%u)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"NAI Realm\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"No room for EAP Method Count\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"EAP Count: %u\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"No room for EAP Methods\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.nai_realm*, i32*, i32*)* @nai_realm_parse_realm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @nai_realm_parse_realm(%struct.nai_realm* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nai_realm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nai_realm* %0, %struct.nai_realm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = ptrtoint i32* %12 to i64
  %15 = ptrtoint i32* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 4
  %18 = icmp slt i64 %17, 4
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %177

22:                                               ; preds = %3
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @WPA_GET_LE16(i32* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  store i32* %26, i32** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = ptrtoint i32* %29 to i64
  %32 = ptrtoint i32* %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 4
  %35 = icmp sgt i64 %28, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %22
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %50

39:                                               ; preds = %36, %22
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = ptrtoint i32* %42 to i64
  %45 = ptrtoint i32* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %48)
  store i32* null, i32** %4, align 8
  br label %177

50:                                               ; preds = %36
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32* %54, i32** %9, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %6, align 8
  %57 = load i32, i32* %55, align 4
  %58 = load %struct.nai_realm*, %struct.nai_realm** %5, align 8
  %59 = getelementptr inbounds %struct.nai_realm, %struct.nai_realm* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %6, align 8
  %62 = load i32, i32* %60, align 4
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = load i32*, i32** %9, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = ptrtoint i32* %65 to i64
  %68 = ptrtoint i32* %66 to i64
  %69 = sub i64 %67, %68
  %70 = sdiv exact i64 %69, 4
  %71 = icmp sgt i64 %64, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %50
  %73 = load i32, i32* @MSG_DEBUG, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = ptrtoint i32* %75 to i64
  %78 = ptrtoint i32* %76 to i64
  %79 = sub i64 %77, %78
  %80 = sdiv exact i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = call i32 (i32, i8*, ...) @wpa_printf(i32 %73, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %81)
  store i32* null, i32** %4, align 8
  br label %177

83:                                               ; preds = %50
  %84 = load i32, i32* @MSG_DEBUG, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @wpa_hexdump_ascii(i32 %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %85, i32 %86)
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32* @dup_binstr(i32* %88, i32 %89)
  %91 = load %struct.nai_realm*, %struct.nai_realm** %5, align 8
  %92 = getelementptr inbounds %struct.nai_realm, %struct.nai_realm* %91, i32 0, i32 2
  store i32* %90, i32** %92, align 8
  %93 = load %struct.nai_realm*, %struct.nai_realm** %5, align 8
  %94 = getelementptr inbounds %struct.nai_realm, %struct.nai_realm* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %83
  store i32* null, i32** %4, align 8
  br label %177

98:                                               ; preds = %83
  %99 = load i32, i32* %10, align 4
  %100 = load i32*, i32** %6, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32* %102, i32** %6, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = ptrtoint i32* %103 to i64
  %106 = ptrtoint i32* %104 to i64
  %107 = sub i64 %105, %106
  %108 = sdiv exact i64 %107, 4
  %109 = icmp slt i64 %108, 1
  br i1 %109, label %110, label %113

110:                                              ; preds = %98
  %111 = load i32, i32* @MSG_DEBUG, align 4
  %112 = call i32 (i32, i8*, ...) @wpa_printf(i32 %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %177

113:                                              ; preds = %98
  %114 = load i32*, i32** %6, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %6, align 8
  %116 = load i32, i32* %114, align 4
  %117 = load %struct.nai_realm*, %struct.nai_realm** %5, align 8
  %118 = getelementptr inbounds %struct.nai_realm, %struct.nai_realm* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* @MSG_DEBUG, align 4
  %120 = load %struct.nai_realm*, %struct.nai_realm** %5, align 8
  %121 = getelementptr inbounds %struct.nai_realm, %struct.nai_realm* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i32, i8*, ...) @wpa_printf(i32 %119, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %122)
  %124 = load %struct.nai_realm*, %struct.nai_realm** %5, align 8
  %125 = getelementptr inbounds %struct.nai_realm, %struct.nai_realm* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = mul nsw i32 %126, 3
  %128 = sext i32 %127 to i64
  %129 = load i32*, i32** %9, align 8
  %130 = load i32*, i32** %6, align 8
  %131 = ptrtoint i32* %129 to i64
  %132 = ptrtoint i32* %130 to i64
  %133 = sub i64 %131, %132
  %134 = sdiv exact i64 %133, 4
  %135 = icmp sgt i64 %128, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %113
  %137 = load i32, i32* @MSG_DEBUG, align 4
  %138 = call i32 (i32, i8*, ...) @wpa_printf(i32 %137, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %177

139:                                              ; preds = %113
  %140 = load %struct.nai_realm*, %struct.nai_realm** %5, align 8
  %141 = getelementptr inbounds %struct.nai_realm, %struct.nai_realm* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32* @os_calloc(i32 %142, i32 4)
  %144 = load %struct.nai_realm*, %struct.nai_realm** %5, align 8
  %145 = getelementptr inbounds %struct.nai_realm, %struct.nai_realm* %144, i32 0, i32 1
  store i32* %143, i32** %145, align 8
  %146 = load %struct.nai_realm*, %struct.nai_realm** %5, align 8
  %147 = getelementptr inbounds %struct.nai_realm, %struct.nai_realm* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %139
  store i32* null, i32** %4, align 8
  br label %177

151:                                              ; preds = %139
  store i32 0, i32* %11, align 4
  br label %152

152:                                              ; preds = %172, %151
  %153 = load i32, i32* %11, align 4
  %154 = load %struct.nai_realm*, %struct.nai_realm** %5, align 8
  %155 = getelementptr inbounds %struct.nai_realm, %struct.nai_realm* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %158, label %175

158:                                              ; preds = %152
  %159 = load %struct.nai_realm*, %struct.nai_realm** %5, align 8
  %160 = getelementptr inbounds %struct.nai_realm, %struct.nai_realm* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32*, i32** %6, align 8
  %166 = load i32*, i32** %9, align 8
  %167 = call i32* @nai_realm_parse_eap(i32* %164, i32* %165, i32* %166)
  store i32* %167, i32** %6, align 8
  %168 = load i32*, i32** %6, align 8
  %169 = icmp eq i32* %168, null
  br i1 %169, label %170, label %171

170:                                              ; preds = %158
  store i32* null, i32** %4, align 8
  br label %177

171:                                              ; preds = %158
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %11, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %11, align 4
  br label %152

175:                                              ; preds = %152
  %176 = load i32*, i32** %9, align 8
  store i32* %176, i32** %4, align 8
  br label %177

177:                                              ; preds = %175, %170, %150, %136, %110, %97, %72, %39, %19
  %178 = load i32*, i32** %4, align 8
  ret i32* %178
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @WPA_GET_LE16(i32*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i32) #1

declare dso_local i32* @dup_binstr(i32*, i32) #1

declare dso_local i32* @os_calloc(i32, i32) #1

declare dso_local i32* @nai_realm_parse_eap(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
