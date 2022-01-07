; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/gbde/extr_gbde.c_setup_passphrase.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/gbde/extr_gbde.c_setup_passphrase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_bde_softc = type { i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@SHA512_DIGEST_LENGTH = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Passphrase too long\00", align 1
@sha2 = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Enter new passphrase:\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Enter passphrase: \00", align 1
@RPP_ECHO_OFF = common dso_local global i32 0, align 4
@RPP_REQUIRE_TTY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"readpassphrase\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Reenter new passphrase: \00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"They didn't match.\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Too short passphrase.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_bde_softc*, i32, i8*, i8*)* @setup_passphrase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_passphrase(%struct.g_bde_softc* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.g_bde_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.g_bde_softc* %0, %struct.g_bde_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %17 = load i32, i32* @BUFSIZ, align 4
  %18 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %19 = add nsw i32 %17, %18
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %23 = load i32, i32* @BUFSIZ, align 4
  %24 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %25 = add nsw i32 %23, %24
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  store i32 0, i32* %15, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %65

30:                                               ; preds = %4
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* @O_RDONLY, align 4
  %33 = call i32 @open(i8* %31, i32 %32, i32 0)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @BUFSIZ, align 4
  %42 = call i32 @read(i32 %40, i8* %22, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %45, %39
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @close(i32 %49)
  %51 = load %struct.g_bde_softc*, %struct.g_bde_softc** %5, align 8
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @g_bde_hash_pass(%struct.g_bde_softc* %51, i8* %22, i32 %52)
  %54 = load %struct.g_bde_softc*, %struct.g_bde_softc** %5, align 8
  %55 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %58 = call i32 @memcpy(i8* %22, i32 %56, i32 %57)
  %59 = load %struct.g_bde_softc*, %struct.g_bde_softc** %5, align 8
  %60 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %63 = call i32 @memcpy(i8* %27, i32 %61, i32 %62)
  %64 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  store i32 %64, i32* %15, align 4
  br label %65

65:                                               ; preds = %48, %4
  %66 = load i8*, i8** %7, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %95

68:                                               ; preds = %65
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = load i32, i32* @BUFSIZ, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %68
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %22, i64 %77
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 @strcpy(i8* %78, i8* %79)
  %81 = load %struct.g_bde_softc*, %struct.g_bde_softc** %5, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %22, i64 %83
  %85 = call i32 @strlen(i8* %84)
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %85, %86
  %88 = call i32 @g_bde_hash_pass(%struct.g_bde_softc* %81, i8* %22, i32 %87)
  %89 = load i8*, i8** @sha2, align 8
  %90 = load %struct.g_bde_softc*, %struct.g_bde_softc** %5, align 8
  %91 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %94 = call i32 @memcpy(i8* %89, i32 %92, i32 %93)
  store i32 1, i32* %16, align 4
  br label %171

95:                                               ; preds = %65
  br label %96

96:                                               ; preds = %153, %144, %95
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0)
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %22, i64 %102
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = sub i64 %20, %105
  %107 = trunc i64 %106 to i32
  %108 = load i32, i32* @RPP_ECHO_OFF, align 4
  %109 = load i32, i32* @RPP_REQUIRE_TTY, align 4
  %110 = or i32 %108, %109
  %111 = call i8* @readpassphrase(i8* %100, i8* %103, i32 %107, i32 %110)
  store i8* %111, i8** %12, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = icmp eq i8* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %96
  %115 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %96
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %147

119:                                              ; preds = %116
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %27, i64 %121
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = sub i64 %26, %124
  %126 = trunc i64 %125 to i32
  %127 = load i32, i32* @RPP_ECHO_OFF, align 4
  %128 = load i32, i32* @RPP_REQUIRE_TTY, align 4
  %129 = or i32 %127, %128
  %130 = call i8* @readpassphrase(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %122, i32 %126, i32 %129)
  store i8* %130, i8** %12, align 8
  %131 = load i8*, i8** %12, align 8
  %132 = icmp eq i8* %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %119
  %134 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %119
  %136 = load i32, i32* %15, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %22, i64 %137
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %27, i64 %140
  %142 = call i64 @strcmp(i8* %138, i8* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %135
  %145 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %96

146:                                              ; preds = %135
  br label %147

147:                                              ; preds = %146, %116
  %148 = load i32, i32* %15, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %22, i64 %149
  %151 = call i32 @strlen(i8* %150)
  %152 = icmp slt i32 %151, 3
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %96

155:                                              ; preds = %147
  br label %156

156:                                              ; preds = %155
  %157 = load %struct.g_bde_softc*, %struct.g_bde_softc** %5, align 8
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %22, i64 %159
  %161 = call i32 @strlen(i8* %160)
  %162 = load i32, i32* %15, align 4
  %163 = add nsw i32 %161, %162
  %164 = call i32 @g_bde_hash_pass(%struct.g_bde_softc* %157, i8* %22, i32 %163)
  %165 = load i8*, i8** @sha2, align 8
  %166 = load %struct.g_bde_softc*, %struct.g_bde_softc** %5, align 8
  %167 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %170 = call i32 @memcpy(i8* %165, i32 %168, i32 %169)
  store i32 0, i32* %16, align 4
  br label %171

171:                                              ; preds = %156, %75
  %172 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %172)
  %173 = load i32, i32* %16, align 4
  switch i32 %173, label %175 [
    i32 0, label %174
    i32 1, label %174
  ]

174:                                              ; preds = %171, %171
  ret void

175:                                              ; preds = %171
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @g_bde_hash_pass(%struct.g_bde_softc*, i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i8* @readpassphrase(i8*, i8*, i32, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @printf(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
