; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getpwent.c_compat_redispatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getpwent.c_compat_redispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.compat_state = type { i32, i32 }
%struct.passwd = type { i8*, i32 }
%struct.TYPE_7__ = type { i8*, i32*, i32*, i32* }

@compat_redispatch.compatsrc = internal constant [1 x %struct.TYPE_6__] zeroinitializer, align 16
@NSDB_PASSWD_COMPAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"getpwent_r\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"getpwuid_r\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"getpwnam_r\00", align 1
@NS_UNAVAIL = common dso_local global i32 0, align 4
@NS_NOTFOUND = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@NS_RETURN = common dso_local global i32 0, align 4
@NSSRC_DNS = common dso_local global i32* null, align 8
@dns_passwd = common dso_local global i32* null, align 8
@nis_passwd = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.compat_state*, i32, i32, i8*, i8*, i8*, %struct.passwd*, i8*, i64, i32*)* @compat_redispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compat_redispatch(%struct.compat_state* %0, i32 %1, i32 %2, i8* %3, i8* %4, i8* %5, %struct.passwd* %6, i8* %7, i64 %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.compat_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.passwd*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca [1 x %struct.TYPE_7__], align 16
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.compat_state* %0, %struct.compat_state** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store %struct.passwd* %6, %struct.passwd** %18, align 8
  store i8* %7, i8** %19, align 8
  store i64 %8, i64* %20, align 8
  store i32* %9, i32** %21, align 8
  %27 = bitcast [1 x %struct.TYPE_7__]* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 32, i1 false)
  store i32 0, i32* %25, align 4
  br label %28

28:                                               ; preds = %42, %10
  %29 = load i32, i32* %25, align 4
  %30 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %22, i64 0, i64 0
  %31 = call i32 @nitems(%struct.TYPE_7__* %30)
  %32 = sub nsw i32 %31, 1
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = load i32, i32* %14, align 4
  %36 = zext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = load i32, i32* %25, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %22, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i8* %37, i8** %41, align 16
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %25, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %25, align 4
  br label %28

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %95, %45
  %47 = load %struct.passwd*, %struct.passwd** %18, align 8
  %48 = call i32 @__pw_initpwd(%struct.passwd* %47)
  %49 = load i32, i32* %14, align 4
  switch i32 %49, label %76 [
    i32 130, label %50
    i32 129, label %58
    i32 128, label %67
  ]

50:                                               ; preds = %46
  %51 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %22, i64 0, i64 0
  %52 = load i32, i32* @NSDB_PASSWD_COMPAT, align 4
  %53 = load %struct.passwd*, %struct.passwd** %18, align 8
  %54 = load i8*, i8** %19, align 8
  %55 = load i64, i64* %20, align 8
  %56 = load i32*, i32** %21, align 8
  %57 = call i32 (i8**, %struct.TYPE_7__*, i32, i8*, %struct.TYPE_6__*, ...) @_nsdispatch(i8** %23, %struct.TYPE_7__* %51, i32 %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* getelementptr inbounds ([1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* @compat_redispatch.compatsrc, i64 0, i64 0), %struct.passwd* %53, i8* %54, i64 %55, i32* %56)
  store i32 %57, i32* %26, align 4
  br label %78

58:                                               ; preds = %46
  %59 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %22, i64 0, i64 0
  %60 = load i32, i32* @NSDB_PASSWD_COMPAT, align 4
  %61 = load i8*, i8** %17, align 8
  %62 = load %struct.passwd*, %struct.passwd** %18, align 8
  %63 = load i8*, i8** %19, align 8
  %64 = load i64, i64* %20, align 8
  %65 = load i32*, i32** %21, align 8
  %66 = call i32 (i8**, %struct.TYPE_7__*, i32, i8*, %struct.TYPE_6__*, ...) @_nsdispatch(i8** %23, %struct.TYPE_7__* %59, i32 %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* getelementptr inbounds ([1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* @compat_redispatch.compatsrc, i64 0, i64 0), i8* %61, %struct.passwd* %62, i8* %63, i64 %64, i32* %65)
  store i32 %66, i32* %26, align 4
  br label %78

67:                                               ; preds = %46
  %68 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %22, i64 0, i64 0
  %69 = load i32, i32* @NSDB_PASSWD_COMPAT, align 4
  %70 = load i8*, i8** %16, align 8
  %71 = load %struct.passwd*, %struct.passwd** %18, align 8
  %72 = load i8*, i8** %19, align 8
  %73 = load i64, i64* %20, align 8
  %74 = load i32*, i32** %21, align 8
  %75 = call i32 (i8**, %struct.TYPE_7__*, i32, i8*, %struct.TYPE_6__*, ...) @_nsdispatch(i8** %23, %struct.TYPE_7__* %68, i32 %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_6__* getelementptr inbounds ([1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* @compat_redispatch.compatsrc, i64 0, i64 0), i8* %70, %struct.passwd* %71, i8* %72, i64 %73, i32* %74)
  store i32 %75, i32* %26, align 4
  br label %78

76:                                               ; preds = %46
  %77 = load i32, i32* @NS_UNAVAIL, align 4
  store i32 %77, i32* %11, align 4
  br label %140

78:                                               ; preds = %67, %58, %50
  %79 = load i32, i32* %26, align 4
  %80 = icmp ne i32 %79, 131
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* %26, align 4
  store i32 %82, i32* %11, align 4
  br label %140

83:                                               ; preds = %78
  %84 = load %struct.passwd*, %struct.passwd** %18, align 8
  %85 = getelementptr inbounds %struct.passwd, %struct.passwd* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.compat_state*, %struct.compat_state** %12, align 8
  %88 = getelementptr inbounds %struct.compat_state, %struct.compat_state* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @compat_is_excluded(i32 %86, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %83
  %93 = load i32, i32* %13, align 4
  %94 = icmp eq i32 %93, 130
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %46

96:                                               ; preds = %92
  %97 = load i32, i32* @NS_NOTFOUND, align 4
  store i32 %97, i32* %11, align 4
  br label %140

98:                                               ; preds = %83
  %99 = load %struct.passwd*, %struct.passwd** %18, align 8
  %100 = load %struct.compat_state*, %struct.compat_state** %12, align 8
  %101 = getelementptr inbounds %struct.compat_state, %struct.compat_state* %100, i32 0, i32 0
  %102 = load i8*, i8** %19, align 8
  %103 = load i64, i64* %20, align 8
  %104 = call i32 @compat_use_template(%struct.passwd* %99, i32* %101, i8* %102, i64 %103)
  store i32 %104, i32* %24, align 4
  %105 = load i32, i32* %24, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %98
  %108 = load i32, i32* %24, align 4
  %109 = load i32*, i32** %21, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* %24, align 4
  %111 = load i32, i32* @ERANGE, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = load i32, i32* @NS_RETURN, align 4
  store i32 %114, i32* %11, align 4
  br label %140

115:                                              ; preds = %107
  %116 = load i32, i32* @NS_UNAVAIL, align 4
  store i32 %116, i32* %11, align 4
  br label %140

117:                                              ; preds = %98
  %118 = load i32, i32* %13, align 4
  switch i32 %118, label %138 [
    i32 128, label %119
    i32 129, label %129
  ]

119:                                              ; preds = %117
  %120 = load i8*, i8** %15, align 8
  %121 = load %struct.passwd*, %struct.passwd** %18, align 8
  %122 = getelementptr inbounds %struct.passwd, %struct.passwd* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @strcmp(i8* %120, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = load i32, i32* @NS_NOTFOUND, align 4
  store i32 %127, i32* %11, align 4
  br label %140

128:                                              ; preds = %119
  br label %139

129:                                              ; preds = %117
  %130 = load i8*, i8** %17, align 8
  %131 = load %struct.passwd*, %struct.passwd** %18, align 8
  %132 = getelementptr inbounds %struct.passwd, %struct.passwd* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = icmp ne i8* %130, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i32, i32* @NS_NOTFOUND, align 4
  store i32 %136, i32* %11, align 4
  br label %140

137:                                              ; preds = %129
  br label %139

138:                                              ; preds = %117
  br label %139

139:                                              ; preds = %138, %137, %128
  store i32 131, i32* %11, align 4
  br label %140

140:                                              ; preds = %139, %135, %126, %115, %113, %96, %81, %76
  %141 = load i32, i32* %11, align 4
  ret i32 %141
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nitems(%struct.TYPE_7__*) #2

declare dso_local i32 @__pw_initpwd(%struct.passwd*) #2

declare dso_local i32 @_nsdispatch(i8**, %struct.TYPE_7__*, i32, i8*, %struct.TYPE_6__*, ...) #2

declare dso_local i64 @compat_is_excluded(i32, i32) #2

declare dso_local i32 @compat_use_template(%struct.passwd*, i32*, i8*, i64) #2

declare dso_local i32 @strcmp(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
