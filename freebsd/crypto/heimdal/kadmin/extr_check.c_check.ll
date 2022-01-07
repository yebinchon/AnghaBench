; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_check.c_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_check.c_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"krb5_get_default_realm\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s/%s@%s\00", align 1
@KRB5_TGS_NAME = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"%s doesn't exist, are you sure %s is a realm in your database\00", align 1
@kadm_handle = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"kadmin/admin@%s\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"%s doesn't exist, there is no way to do remote administration\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"kadmin/changepw@%s\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"%s doesn't exist, there is no way to do change password\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"afs/%s@%s\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"afs@%s\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"afs@REALM and afs/cellname@REALM both exists\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@do_check_entry = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"check\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i8* null, i8** %10, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load i32, i32* @context, align 4
  %18 = call i64 @krb5_get_default_realm(i32 %17, i8** %10)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @context, align 4
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @krb5_warn(i32 %22, i64 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %172

25:                                               ; preds = %16
  br label %37

26:                                               ; preds = %3
  %27 = load i8**, i8*** %7, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @strdup(i8* %29)
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @context, align 4
  %35 = call i32 @krb5_warnx(i32 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %172

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %25
  %38 = load i32, i32* @KRB5_TGS_NAME, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %40, i8* %41, i8* %42)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i32, i32* @context, align 4
  %47 = load i64, i64* @errno, align 8
  %48 = call i32 @krb5_warn(i32 %46, i64 %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %172

49:                                               ; preds = %37
  %50 = load i8*, i8** %11, align 8
  %51 = call i64 @get_check_entry(i8* %50, i32* %8)
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i8*, i8** %11, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i8* %55, i8* %56)
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @free(i8* %58)
  br label %172

60:                                               ; preds = %49
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @free(i8* %61)
  %63 = load i32, i32* @kadm_handle, align 4
  %64 = call i32 @kadm5_free_principal_ent(i32 %63, i32* %8)
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %65)
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load i32, i32* @context, align 4
  %70 = load i64, i64* @errno, align 8
  %71 = call i32 @krb5_warn(i32 %69, i64 %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %172

72:                                               ; preds = %60
  %73 = load i8*, i8** %11, align 8
  %74 = call i64 @get_check_entry(i8* %73, i32* %8)
  store i64 %74, i64* %9, align 8
  %75 = load i64, i64* %9, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0), i8* %78)
  %80 = load i8*, i8** %11, align 8
  %81 = call i32 @free(i8* %80)
  br label %172

82:                                               ; preds = %72
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load i32, i32* @kadm_handle, align 4
  %86 = call i32 @kadm5_free_principal_ent(i32 %85, i32* %8)
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %87)
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load i32, i32* @context, align 4
  %92 = load i64, i64* @errno, align 8
  %93 = call i32 @krb5_warn(i32 %91, i64 %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %172

94:                                               ; preds = %82
  %95 = load i8*, i8** %11, align 8
  %96 = call i64 @get_check_entry(i8* %95, i32* %8)
  store i64 %96, i64* %9, align 8
  %97 = load i64, i64* %9, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i8*, i8** %11, align 8
  %101 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i8* %100)
  %102 = load i8*, i8** %11, align 8
  %103 = call i32 @free(i8* %102)
  br label %172

104:                                              ; preds = %94
  %105 = load i8*, i8** %11, align 8
  %106 = call i32 @free(i8* %105)
  %107 = load i32, i32* @kadm_handle, align 4
  %108 = call i32 @kadm5_free_principal_ent(i32 %107, i32* %8)
  %109 = load i8*, i8** %10, align 8
  %110 = call i8* @strdup(i8* %109)
  store i8* %110, i8** %12, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = icmp eq i8* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %104
  %114 = load i32, i32* @context, align 4
  %115 = load i64, i64* @errno, align 8
  %116 = call i32 @krb5_warn(i32 %114, i64 %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %172

117:                                              ; preds = %104
  %118 = load i8*, i8** %12, align 8
  %119 = call i32 @strlwr(i8* %118)
  %120 = load i8*, i8** %12, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %120, i8* %121)
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load i32, i32* @context, align 4
  %126 = load i64, i64* @errno, align 8
  %127 = call i32 @krb5_warn(i32 %125, i64 %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %128 = load i8*, i8** %12, align 8
  %129 = call i32 @free(i8* %128)
  br label %172

130:                                              ; preds = %117
  %131 = load i8*, i8** %12, align 8
  %132 = call i32 @free(i8* %131)
  %133 = load i8*, i8** %11, align 8
  %134 = call i64 @get_check_entry(i8* %133, i32* %8)
  store i64 %134, i64* %9, align 8
  %135 = load i8*, i8** %11, align 8
  %136 = call i32 @free(i8* %135)
  %137 = load i64, i64* %9, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %130
  %140 = load i32, i32* @kadm_handle, align 4
  %141 = call i32 @kadm5_free_principal_ent(i32 %140, i32* %8)
  store i32 1, i32* %13, align 4
  br label %143

142:                                              ; preds = %130
  store i32 0, i32* %13, align 4
  br label %143

143:                                              ; preds = %142, %139
  %144 = load i8*, i8** %10, align 8
  %145 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %144)
  %146 = icmp eq i32 %145, -1
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load i32, i32* @context, align 4
  %149 = load i64, i64* @errno, align 8
  %150 = call i32 @krb5_warn(i32 %148, i64 %149, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %172

151:                                              ; preds = %143
  %152 = load i8*, i8** %11, align 8
  %153 = call i64 @get_check_entry(i8* %152, i32* %8)
  store i64 %153, i64* %9, align 8
  %154 = load i8*, i8** %11, align 8
  %155 = call i32 @free(i8* %154)
  %156 = load i64, i64* %9, align 8
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %151
  %159 = load i32, i32* @kadm_handle, align 4
  %160 = call i32 @kadm5_free_principal_ent(i32 %159, i32* %8)
  %161 = load i32, i32* %13, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load i32, i32* @context, align 4
  %165 = call i32 @krb5_warnx(i32 %164, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  br label %172

166:                                              ; preds = %158
  br label %167

167:                                              ; preds = %166, %151
  %168 = load i32, i32* @do_check_entry, align 4
  %169 = call i32 @foreach_principal(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32* null)
  %170 = load i8*, i8** %10, align 8
  %171 = call i32 @free(i8* %170)
  store i32 0, i32* %4, align 4
  br label %175

172:                                              ; preds = %163, %147, %124, %113, %99, %90, %77, %68, %54, %45, %33, %21
  %173 = load i8*, i8** %10, align 8
  %174 = call i32 @free(i8* %173)
  store i32 1, i32* %4, align 4
  br label %175

175:                                              ; preds = %172, %167
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i64 @krb5_get_default_realm(i32, i8**) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @krb5_warnx(i32, i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, ...) #1

declare dso_local i64 @get_check_entry(i8*, i32*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @kadm5_free_principal_ent(i32, i32*) #1

declare dso_local i32 @strlwr(i8*) #1

declare dso_local i32 @foreach_principal(i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
