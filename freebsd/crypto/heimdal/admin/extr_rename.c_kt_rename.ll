; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/admin/extr_rename.c_kt_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/admin/extr_rename.c_kt_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rename_options = type { i64 }
%struct.TYPE_6__ = type { i8* }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@KRB5_CC_END = common dso_local global i64 0, align 8
@KRB5_KT_END = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"getting entry from keytab\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"adding entry\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"removing entry\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kt_rename(%struct.rename_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rename_options*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.rename_options* %0, %struct.rename_options** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i64 0, i64* %8, align 8
  %14 = load i32, i32* @context, align 4
  %15 = load i8**, i8*** %7, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @krb5_parse_name(i32 %14, i8* %17, i8** %12)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load i32, i32* @context, align 4
  %23 = load i64, i64* %8, align 8
  %24 = load i8**, i8*** %7, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %22, i64 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %26)
  store i32 1, i32* %4, align 4
  br label %158

28:                                               ; preds = %3
  %29 = load i32, i32* @context, align 4
  %30 = load i8**, i8*** %7, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @krb5_parse_name(i32 %29, i8* %32, i8** %13)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %28
  %37 = load i32, i32* @context, align 4
  %38 = load i8*, i8** %12, align 8
  %39 = call i32 @krb5_free_principal(i32 %37, i8* %38)
  %40 = load i32, i32* @context, align 4
  %41 = load i64, i64* %8, align 8
  %42 = load i8**, i8*** %7, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %40, i64 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %44)
  store i32 1, i32* %4, align 4
  br label %158

46:                                               ; preds = %28
  %47 = call i32* (...) @ktutil_open_keytab()
  store i32* %47, i32** %10, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i32, i32* @context, align 4
  %51 = load i8*, i8** %12, align 8
  %52 = call i32 @krb5_free_principal(i32 %50, i8* %51)
  %53 = load i32, i32* @context, align 4
  %54 = load i8*, i8** %13, align 8
  %55 = call i32 @krb5_free_principal(i32 %53, i8* %54)
  store i32 1, i32* %4, align 4
  br label %158

56:                                               ; preds = %46
  %57 = load i32, i32* @context, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = call i64 @krb5_kt_start_seq_get(i32 %57, i32* %58, i32* %11)
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load i32, i32* @context, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @krb5_kt_close(i32 %63, i32* %64)
  %66 = load i32, i32* @context, align 4
  %67 = load i8*, i8** %12, align 8
  %68 = call i32 @krb5_free_principal(i32 %66, i8* %67)
  %69 = load i32, i32* @context, align 4
  %70 = load i8*, i8** %13, align 8
  %71 = call i32 @krb5_free_principal(i32 %69, i8* %70)
  store i32 1, i32* %4, align 4
  br label %158

72:                                               ; preds = %56
  br label %73

73:                                               ; preds = %72, %142
  %74 = load i32, i32* @context, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = call i64 @krb5_kt_next_entry(i32 %74, i32* %75, %struct.TYPE_6__* %9, i32* %11)
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %8, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %73
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* @KRB5_CC_END, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* @KRB5_KT_END, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* @context, align 4
  %89 = load i64, i64* %8, align 8
  %90 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %88, i64 %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %92

91:                                               ; preds = %83, %79
  store i64 0, i64* %8, align 8
  br label %92

92:                                               ; preds = %91, %87
  br label %145

93:                                               ; preds = %73
  %94 = load i32, i32* @context, align 4
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = call i64 @krb5_principal_compare(i32 %94, i8* %96, i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %142

100:                                              ; preds = %93
  %101 = load i32, i32* @context, align 4
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @krb5_free_principal(i32 %101, i8* %103)
  %105 = load i8*, i8** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i8* %105, i8** %106, align 8
  %107 = load i32, i32* @context, align 4
  %108 = load i32*, i32** %10, align 8
  %109 = call i64 @krb5_kt_add_entry(i32 %107, i32* %108, %struct.TYPE_6__* %9)
  store i64 %109, i64* %8, align 8
  %110 = load i64, i64* %8, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %100
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i8* null, i8** %113, align 8
  %114 = load i32, i32* @context, align 4
  %115 = call i32 @krb5_kt_free_entry(i32 %114, %struct.TYPE_6__* %9)
  %116 = load i32, i32* @context, align 4
  %117 = load i64, i64* %8, align 8
  %118 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %116, i64 %117, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %145

119:                                              ; preds = %100
  %120 = load %struct.rename_options*, %struct.rename_options** %5, align 8
  %121 = getelementptr inbounds %struct.rename_options, %struct.rename_options* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %140

124:                                              ; preds = %119
  %125 = load i8*, i8** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i8* %125, i8** %126, align 8
  %127 = load i32, i32* @context, align 4
  %128 = load i32*, i32** %10, align 8
  %129 = call i64 @krb5_kt_remove_entry(i32 %127, i32* %128, %struct.TYPE_6__* %9)
  store i64 %129, i64* %8, align 8
  %130 = load i64, i64* %8, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i8* null, i8** %133, align 8
  %134 = load i32, i32* @context, align 4
  %135 = call i32 @krb5_kt_free_entry(i32 %134, %struct.TYPE_6__* %9)
  %136 = load i32, i32* @context, align 4
  %137 = load i64, i64* %8, align 8
  %138 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %136, i64 %137, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %145

139:                                              ; preds = %124
  br label %140

140:                                              ; preds = %139, %119
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i8* null, i8** %141, align 8
  br label %142

142:                                              ; preds = %140, %93
  %143 = load i32, i32* @context, align 4
  %144 = call i32 @krb5_kt_free_entry(i32 %143, %struct.TYPE_6__* %9)
  br label %73

145:                                              ; preds = %132, %112, %92
  %146 = load i32, i32* @context, align 4
  %147 = load i32*, i32** %10, align 8
  %148 = call i32 @krb5_kt_end_seq_get(i32 %146, i32* %147, i32* %11)
  %149 = load i32, i32* @context, align 4
  %150 = load i8*, i8** %12, align 8
  %151 = call i32 @krb5_free_principal(i32 %149, i8* %150)
  %152 = load i32, i32* @context, align 4
  %153 = load i8*, i8** %13, align 8
  %154 = call i32 @krb5_free_principal(i32 %152, i8* %153)
  %155 = load i64, i64* %8, align 8
  %156 = icmp ne i64 %155, 0
  %157 = zext i1 %156 to i32
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %145, %62, %49, %36, %21
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i64 @krb5_parse_name(i32, i8*, i8**) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*, ...) #1

declare dso_local i32 @krb5_free_principal(i32, i8*) #1

declare dso_local i32* @ktutil_open_keytab(...) #1

declare dso_local i64 @krb5_kt_start_seq_get(i32, i32*, i32*) #1

declare dso_local i32 @krb5_kt_close(i32, i32*) #1

declare dso_local i64 @krb5_kt_next_entry(i32, i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i64 @krb5_principal_compare(i32, i8*, i8*) #1

declare dso_local i64 @krb5_kt_add_entry(i32, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @krb5_kt_free_entry(i32, %struct.TYPE_6__*) #1

declare dso_local i64 @krb5_kt_remove_entry(i32, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @krb5_kt_end_seq_get(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
