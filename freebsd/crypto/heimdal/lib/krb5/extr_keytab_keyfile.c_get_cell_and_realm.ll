; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_keytab_keyfile.c_get_cell_and_realm.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_keytab_keyfile.c_get_cell_and_realm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.akf_data = type { i32*, i32* }

@BUFSIZ = common dso_local global i32 0, align 4
@AFS_SERVERTHISCELL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Open ThisCell %s: %s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"No cell in ThisCell file %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@AFS_SERVERMAGICKRBCONF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"No realm in ThisCell file %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.akf_data*)* @get_cell_and_realm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cell_and_realm(i32 %0, %struct.akf_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.akf_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.akf_data* %1, %struct.akf_data** %5, align 8
  %12 = load i32, i32* @BUFSIZ, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @AFS_SERVERTHISCELL, align 4
  %17 = call i32* @fopen(i32 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load i32, i32* @errno, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @N_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @AFS_SERVERTHISCELL, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @strerror(i32 %26)
  %28 = call i32 (i32, i32, i32, ...) @krb5_set_error_message(i32 %22, i32 %23, i32 %24, i32 %25, i32 %27)
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %129

30:                                               ; preds = %2
  %31 = trunc i64 %13 to i32
  %32 = load i32*, i32** %6, align 8
  %33 = call i32* @fgets(i8* %15, i32 %31, i32* %32)
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @fclose(i32* %36)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @EINVAL, align 4
  %40 = call i32 @N_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @AFS_SERVERTHISCELL, align 4
  %42 = call i32 (i32, i32, i32, ...) @krb5_set_error_message(i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %129

44:                                               ; preds = %30
  %45 = call i64 @strcspn(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %46 = getelementptr inbounds i8, i8* %15, i64 %45
  store i8 0, i8* %46, align 1
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @fclose(i32* %47)
  %49 = call i8* @strdup(i8* %15)
  %50 = bitcast i8* %49 to i32*
  %51 = load %struct.akf_data*, %struct.akf_data** %5, align 8
  %52 = getelementptr inbounds %struct.akf_data, %struct.akf_data* %51, i32 0, i32 0
  store i32* %50, i32** %52, align 8
  %53 = load %struct.akf_data*, %struct.akf_data** %5, align 8
  %54 = getelementptr inbounds %struct.akf_data, %struct.akf_data* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %44
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %61 = call i32 (i32, i32, i32, ...) @krb5_set_error_message(i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* @ENOMEM, align 4
  store i32 %62, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %129

63:                                               ; preds = %44
  %64 = load i32, i32* @AFS_SERVERMAGICKRBCONF, align 4
  %65 = call i32* @fopen(i32 %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %65, i32** %6, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %93

68:                                               ; preds = %63
  %69 = trunc i64 %13 to i32
  %70 = load i32*, i32** %6, align 8
  %71 = call i32* @fgets(i8* %15, i32 %69, i32* %70)
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %88

73:                                               ; preds = %68
  %74 = load %struct.akf_data*, %struct.akf_data** %5, align 8
  %75 = getelementptr inbounds %struct.akf_data, %struct.akf_data* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @free(i32* %76)
  %78 = load %struct.akf_data*, %struct.akf_data** %5, align 8
  %79 = getelementptr inbounds %struct.akf_data, %struct.akf_data* %78, i32 0, i32 0
  store i32* null, i32** %79, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @fclose(i32* %80)
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @EINVAL, align 4
  %84 = call i32 @N_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* @AFS_SERVERMAGICKRBCONF, align 4
  %86 = call i32 (i32, i32, i32, ...) @krb5_set_error_message(i32 %82, i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* @EINVAL, align 4
  store i32 %87, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %129

88:                                               ; preds = %68
  %89 = call i64 @strcspn(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %90 = getelementptr inbounds i8, i8* %15, i64 %89
  store i8 0, i8* %90, align 1
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @fclose(i32* %91)
  br label %93

93:                                               ; preds = %88, %63
  store i8* %15, i8** %9, align 8
  br label %94

94:                                               ; preds = %104, %93
  %95 = load i8*, i8** %9, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load i8*, i8** %9, align 8
  %101 = load i8, i8* %100, align 1
  %102 = call signext i8 @toupper(i8 zeroext %101)
  %103 = load i8*, i8** %9, align 8
  store i8 %102, i8* %103, align 1
  br label %104

104:                                              ; preds = %99
  %105 = load i8*, i8** %9, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %9, align 8
  br label %94

107:                                              ; preds = %94
  %108 = call i8* @strdup(i8* %15)
  %109 = bitcast i8* %108 to i32*
  %110 = load %struct.akf_data*, %struct.akf_data** %5, align 8
  %111 = getelementptr inbounds %struct.akf_data, %struct.akf_data* %110, i32 0, i32 1
  store i32* %109, i32** %111, align 8
  %112 = load %struct.akf_data*, %struct.akf_data** %5, align 8
  %113 = getelementptr inbounds %struct.akf_data, %struct.akf_data* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %128

116:                                              ; preds = %107
  %117 = load %struct.akf_data*, %struct.akf_data** %5, align 8
  %118 = getelementptr inbounds %struct.akf_data, %struct.akf_data* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @free(i32* %119)
  %121 = load %struct.akf_data*, %struct.akf_data** %5, align 8
  %122 = getelementptr inbounds %struct.akf_data, %struct.akf_data* %121, i32 0, i32 0
  store i32* null, i32** %122, align 8
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %126 = call i32 (i32, i32, i32, ...) @krb5_set_error_message(i32 %123, i32 %124, i32 %125)
  %127 = load i32, i32* @ENOMEM, align 4
  store i32 %127, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %129

128:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %129

129:                                              ; preds = %128, %116, %73, %57, %35, %20
  %130 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %130)
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i32, i8*) #2

declare dso_local i32 @krb5_set_error_message(i32, i32, i32, ...) #2

declare dso_local i32 @N_(i8*, i8*) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i64 @strcspn(i8*, i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @free(i32*) #2

declare dso_local signext i8 @toupper(i8 zeroext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
