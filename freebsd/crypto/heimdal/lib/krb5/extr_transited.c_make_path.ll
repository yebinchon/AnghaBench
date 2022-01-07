; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_transited.c_make_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_transited.c_make_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr_realm = type { i8*, %struct.tr_realm* }

@KRB5KDC_ERR_POLICY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.tr_realm*, i8*, i8*)* @make_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_path(i32 %0, %struct.tr_realm* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tr_realm*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.tr_realm*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.tr_realm* %1, %struct.tr_realm** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = load i8*, i8** %9, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** %9, align 8
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %12, align 8
  store i8* %21, i8** %9, align 8
  br label %22

22:                                               ; preds = %18, %4
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = sext i32 %29 to i64
  %31 = sub i64 0, %30
  %32 = getelementptr inbounds i8, i8* %27, i64 %31
  %33 = load i8*, i8** %9, align 8
  %34 = call i64 @strcmp(i8* %32, i8* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %91

36:                                               ; preds = %22
  %37 = load i8*, i8** %8, align 8
  store i8* %37, i8** %11, align 8
  br label %38

38:                                               ; preds = %36, %89
  %39 = load i8*, i8** %11, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 46)
  store i8* %40, i8** %11, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @krb5_clear_error_message(i32 %44)
  %46 = load i32, i32* @KRB5KDC_ERR_POLICY, align 4
  store i32 %46, i32* %5, align 4
  br label %207

47:                                               ; preds = %38
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %11, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i64 @strcmp(i8* %50, i8* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %90

55:                                               ; preds = %47
  %56 = call %struct.tr_realm* @calloc(i32 1, i32 16)
  store %struct.tr_realm* %56, %struct.tr_realm** %10, align 8
  %57 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %58 = icmp eq %struct.tr_realm* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @krb5_enomem(i32 %60)
  store i32 %61, i32* %5, align 4
  br label %207

62:                                               ; preds = %55
  %63 = load %struct.tr_realm*, %struct.tr_realm** %7, align 8
  %64 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %63, i32 0, i32 1
  %65 = load %struct.tr_realm*, %struct.tr_realm** %64, align 8
  %66 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %67 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %66, i32 0, i32 1
  store %struct.tr_realm* %65, %struct.tr_realm** %67, align 8
  %68 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %69 = load %struct.tr_realm*, %struct.tr_realm** %7, align 8
  %70 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %69, i32 0, i32 1
  store %struct.tr_realm* %68, %struct.tr_realm** %70, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = call i8* @strdup(i8* %71)
  %73 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %74 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %76 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %89

79:                                               ; preds = %62
  %80 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %81 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %80, i32 0, i32 1
  %82 = load %struct.tr_realm*, %struct.tr_realm** %81, align 8
  %83 = load %struct.tr_realm*, %struct.tr_realm** %7, align 8
  %84 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %83, i32 0, i32 1
  store %struct.tr_realm* %82, %struct.tr_realm** %84, align 8
  %85 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %86 = call i32 @free(%struct.tr_realm* %85)
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @krb5_enomem(i32 %87)
  store i32 %88, i32* %5, align 4
  br label %207

89:                                               ; preds = %62
  br label %38

90:                                               ; preds = %54
  br label %206

91:                                               ; preds = %22
  %92 = load i8*, i8** %8, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = call i32 @strlen(i8* %94)
  %96 = call i64 @strncmp(i8* %92, i8* %93, i32 %95)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %201

98:                                               ; preds = %91
  %99 = load i8*, i8** %8, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @strlen(i8* %100)
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  store i8* %103, i8** %11, align 8
  br label %104

104:                                              ; preds = %98, %177
  br label %105

105:                                              ; preds = %116, %104
  %106 = load i8*, i8** %11, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = icmp uge i8* %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load i8*, i8** %11, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 47
  br label %114

114:                                              ; preds = %109, %105
  %115 = phi i1 [ false, %105 ], [ %113, %109 ]
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  %117 = load i8*, i8** %11, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 -1
  store i8* %118, i8** %11, align 8
  br label %105

119:                                              ; preds = %114
  %120 = load i8*, i8** %11, align 8
  %121 = load i8*, i8** %8, align 8
  %122 = icmp eq i8* %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32, i32* @KRB5KDC_ERR_POLICY, align 4
  store i32 %124, i32* %5, align 4
  br label %207

125:                                              ; preds = %119
  %126 = load i8*, i8** %9, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = load i8*, i8** %11, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = ptrtoint i8* %128 to i64
  %131 = ptrtoint i8* %129 to i64
  %132 = sub i64 %130, %131
  %133 = trunc i64 %132 to i32
  %134 = call i64 @strncmp(i8* %126, i8* %127, i32 %133)
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %125
  br label %200

137:                                              ; preds = %125
  %138 = call %struct.tr_realm* @calloc(i32 1, i32 16)
  store %struct.tr_realm* %138, %struct.tr_realm** %10, align 8
  %139 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %140 = icmp eq %struct.tr_realm* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @krb5_enomem(i32 %142)
  store i32 %143, i32* %5, align 4
  br label %207

144:                                              ; preds = %137
  %145 = load %struct.tr_realm*, %struct.tr_realm** %7, align 8
  %146 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %145, i32 0, i32 1
  %147 = load %struct.tr_realm*, %struct.tr_realm** %146, align 8
  %148 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %149 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %148, i32 0, i32 1
  store %struct.tr_realm* %147, %struct.tr_realm** %149, align 8
  %150 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %151 = load %struct.tr_realm*, %struct.tr_realm** %7, align 8
  %152 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %151, i32 0, i32 1
  store %struct.tr_realm* %150, %struct.tr_realm** %152, align 8
  %153 = load i8*, i8** %11, align 8
  %154 = load i8*, i8** %8, align 8
  %155 = ptrtoint i8* %153 to i64
  %156 = ptrtoint i8* %154 to i64
  %157 = sub i64 %155, %156
  %158 = add nsw i64 %157, 1
  %159 = trunc i64 %158 to i32
  %160 = call i8* @malloc(i32 %159)
  %161 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %162 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %161, i32 0, i32 0
  store i8* %160, i8** %162, align 8
  %163 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %164 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = icmp eq i8* %165, null
  br i1 %166, label %167, label %177

167:                                              ; preds = %144
  %168 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %169 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %168, i32 0, i32 1
  %170 = load %struct.tr_realm*, %struct.tr_realm** %169, align 8
  %171 = load %struct.tr_realm*, %struct.tr_realm** %7, align 8
  %172 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %171, i32 0, i32 1
  store %struct.tr_realm* %170, %struct.tr_realm** %172, align 8
  %173 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %174 = call i32 @free(%struct.tr_realm* %173)
  %175 = load i32, i32* %6, align 4
  %176 = call i32 @krb5_enomem(i32 %175)
  store i32 %176, i32* %5, align 4
  br label %207

177:                                              ; preds = %144
  %178 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %179 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = load i8*, i8** %8, align 8
  %182 = load i8*, i8** %11, align 8
  %183 = load i8*, i8** %8, align 8
  %184 = ptrtoint i8* %182 to i64
  %185 = ptrtoint i8* %183 to i64
  %186 = sub i64 %184, %185
  %187 = trunc i64 %186 to i32
  %188 = call i32 @memcpy(i8* %180, i8* %181, i32 %187)
  %189 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %190 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = load i8*, i8** %11, align 8
  %193 = load i8*, i8** %8, align 8
  %194 = ptrtoint i8* %192 to i64
  %195 = ptrtoint i8* %193 to i64
  %196 = sub i64 %194, %195
  %197 = getelementptr inbounds i8, i8* %191, i64 %196
  store i8 0, i8* %197, align 1
  %198 = load i8*, i8** %11, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 -1
  store i8* %199, i8** %11, align 8
  br label %104

200:                                              ; preds = %136
  br label %205

201:                                              ; preds = %91
  %202 = load i32, i32* %6, align 4
  %203 = call i32 @krb5_clear_error_message(i32 %202)
  %204 = load i32, i32* @KRB5KDC_ERR_POLICY, align 4
  store i32 %204, i32* %5, align 4
  br label %207

205:                                              ; preds = %200
  br label %206

206:                                              ; preds = %205, %90
  store i32 0, i32* %5, align 4
  br label %207

207:                                              ; preds = %206, %201, %167, %141, %123, %79, %59, %43
  %208 = load i32, i32* %5, align 4
  ret i32 %208
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @krb5_clear_error_message(i32) #1

declare dso_local %struct.tr_realm* @calloc(i32, i32) #1

declare dso_local i32 @krb5_enomem(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(%struct.tr_realm*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
