; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/admin/extr_copy.c_kt_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/admin/extr_copy.c_kt_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"resolving src keytab `%s'\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"resolving dst keytab `%s'\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"krb5_kt_start_seq_get %s\00", align 1
@keytab_string = common dso_local global i32 0, align 4
@verbose_flag = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"copying %s to %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"krb5_unparse_name\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"krb5_enctype_to_string\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c"entry with different keyvalue already exists for %s, keytype %s, kvno %d\00", align 1
@KRB5_KT_NOTFOUND = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"%s: fetching %s/%s/%u\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"copying %s, keytype %s, kvno %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"%s: adding %s/%s/%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kt_copy(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__, align 4
  %13 = alloca %struct.TYPE_8__, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %18 = load i8**, i8*** %7, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %14, align 8
  %21 = load i8**, i8*** %7, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %15, align 8
  %24 = load i32, i32* @context, align 4
  %25 = load i8*, i8** %14, align 8
  %26 = call i64 @krb5_kt_resolve(i32 %24, i8* %25, i32* %9)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load i32, i32* @context, align 4
  %31 = load i64, i64* %8, align 8
  %32 = load i8*, i8** %14, align 8
  %33 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %30, i64 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %32)
  store i32 1, i32* %4, align 4
  br label %200

34:                                               ; preds = %3
  %35 = load i32, i32* @context, align 4
  %36 = load i8*, i8** %15, align 8
  %37 = call i64 @krb5_kt_resolve(i32 %35, i8* %36, i32* %10)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load i32, i32* @context, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @krb5_kt_close(i32 %41, i32 %42)
  %44 = load i32, i32* @context, align 4
  %45 = load i64, i64* %8, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %44, i64 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  store i32 1, i32* %4, align 4
  br label %200

48:                                               ; preds = %34
  %49 = load i32, i32* @context, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @krb5_kt_start_seq_get(i32 %49, i32 %50, i32* %11)
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load i32, i32* @context, align 4
  %56 = load i64, i64* %8, align 8
  %57 = load i32, i32* @keytab_string, align 4
  %58 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %55, i64 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %190

59:                                               ; preds = %48
  %60 = load i64, i64* @verbose_flag, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i32, i32* @stderr, align 4
  %64 = load i8*, i8** %14, align 8
  %65 = load i8*, i8** %15, align 8
  %66 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %64, i8* %65)
  br label %67

67:                                               ; preds = %62, %59
  br label %68

68:                                               ; preds = %181, %121, %67
  %69 = load i32, i32* @context, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i64 @krb5_kt_next_entry(i32 %69, i32 %70, %struct.TYPE_8__* %12, i32* %11)
  store i64 %71, i64* %8, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %186

73:                                               ; preds = %68
  %74 = load i32, i32* @context, align 4
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @krb5_unparse_name(i32 %74, i32 %76, i8** %16)
  store i64 %77, i64* %8, align 8
  %78 = load i64, i64* %8, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load i32, i32* @context, align 4
  %82 = load i64, i64* %8, align 8
  %83 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %81, i64 %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i8* null, i8** %16, align 8
  br label %84

84:                                               ; preds = %80, %73
  %85 = load i32, i32* @context, align 4
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @krb5_enctype_to_string(i32 %85, i32 %88, i8** %17)
  store i64 %89, i64* %8, align 8
  %90 = load i64, i64* %8, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load i32, i32* @context, align 4
  %94 = load i64, i64* %8, align 8
  %95 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %93, i64 %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i8* null, i8** %17, align 8
  br label %96

96:                                               ; preds = %92, %84
  %97 = load i32, i32* @context, align 4
  %98 = load i32, i32* %10, align 4
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @krb5_kt_get_entry(i32 %97, i32 %98, i32 %100, i32 %102, i32 %105, %struct.TYPE_8__* %13)
  store i64 %106, i64* %8, align 8
  %107 = load i64, i64* %8, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %130

109:                                              ; preds = %96
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %112 = call i32 @compare_keyblock(%struct.TYPE_9__* %110, %struct.TYPE_9__* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* @context, align 4
  %116 = load i8*, i8** %16, align 8
  %117 = load i8*, i8** %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @krb5_warnx(i32 %115, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0), i8* %116, i8* %117, i32 %119)
  br label %121

121:                                              ; preds = %114, %109
  %122 = load i32, i32* @context, align 4
  %123 = call i32 @krb5_kt_free_entry(i32 %122, %struct.TYPE_8__* %13)
  %124 = load i32, i32* @context, align 4
  %125 = call i32 @krb5_kt_free_entry(i32 %124, %struct.TYPE_8__* %12)
  %126 = load i8*, i8** %16, align 8
  %127 = call i32 @free(i8* %126)
  %128 = load i8*, i8** %17, align 8
  %129 = call i32 @free(i8* %128)
  br label %68

130:                                              ; preds = %96
  %131 = load i64, i64* %8, align 8
  %132 = load i64, i64* @KRB5_KT_NOTFOUND, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %149

134:                                              ; preds = %130
  %135 = load i32, i32* @context, align 4
  %136 = load i64, i64* %8, align 8
  %137 = load i8*, i8** %15, align 8
  %138 = load i8*, i8** %16, align 8
  %139 = load i8*, i8** %17, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %135, i64 %136, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %137, i8* %138, i8* %139, i32 %141)
  %143 = load i32, i32* @context, align 4
  %144 = call i32 @krb5_kt_free_entry(i32 %143, %struct.TYPE_8__* %12)
  %145 = load i8*, i8** %16, align 8
  %146 = call i32 @free(i8* %145)
  %147 = load i8*, i8** %17, align 8
  %148 = call i32 @free(i8* %147)
  br label %186

149:                                              ; preds = %130
  br label %150

150:                                              ; preds = %149
  %151 = load i64, i64* @verbose_flag, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %150
  %154 = load i32, i32* @stderr, align 4
  %155 = load i8*, i8** %16, align 8
  %156 = load i8*, i8** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %154, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %155, i8* %156, i32 %158)
  br label %160

160:                                              ; preds = %153, %150
  %161 = load i32, i32* @context, align 4
  %162 = load i32, i32* %10, align 4
  %163 = call i64 @krb5_kt_add_entry(i32 %161, i32 %162, %struct.TYPE_8__* %12)
  store i64 %163, i64* %8, align 8
  %164 = load i32, i32* @context, align 4
  %165 = call i32 @krb5_kt_free_entry(i32 %164, %struct.TYPE_8__* %12)
  %166 = load i64, i64* %8, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %160
  %169 = load i32, i32* @context, align 4
  %170 = load i64, i64* %8, align 8
  %171 = load i8*, i8** %15, align 8
  %172 = load i8*, i8** %16, align 8
  %173 = load i8*, i8** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %169, i64 %170, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %171, i8* %172, i8* %173, i32 %175)
  %177 = load i8*, i8** %16, align 8
  %178 = call i32 @free(i8* %177)
  %179 = load i8*, i8** %17, align 8
  %180 = call i32 @free(i8* %179)
  br label %186

181:                                              ; preds = %160
  %182 = load i8*, i8** %16, align 8
  %183 = call i32 @free(i8* %182)
  %184 = load i8*, i8** %17, align 8
  %185 = call i32 @free(i8* %184)
  br label %68

186:                                              ; preds = %168, %134, %68
  %187 = load i32, i32* @context, align 4
  %188 = load i32, i32* %9, align 4
  %189 = call i32 @krb5_kt_end_seq_get(i32 %187, i32 %188, i32* %11)
  br label %190

190:                                              ; preds = %186, %54
  %191 = load i32, i32* @context, align 4
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @krb5_kt_close(i32 %191, i32 %192)
  %194 = load i32, i32* @context, align 4
  %195 = load i32, i32* %10, align 4
  %196 = call i32 @krb5_kt_close(i32 %194, i32 %195)
  %197 = load i64, i64* %8, align 8
  %198 = icmp ne i64 %197, 0
  %199 = zext i1 %198 to i32
  store i32 %199, i32* %4, align 4
  br label %200

200:                                              ; preds = %190, %40, %29
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

declare dso_local i64 @krb5_kt_resolve(i32, i8*, i32*) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*, ...) #1

declare dso_local i32 @krb5_kt_close(i32, i32) #1

declare dso_local i64 @krb5_kt_start_seq_get(i32, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, ...) #1

declare dso_local i64 @krb5_kt_next_entry(i32, i32, %struct.TYPE_8__*, i32*) #1

declare dso_local i64 @krb5_unparse_name(i32, i32, i8**) #1

declare dso_local i64 @krb5_enctype_to_string(i32, i32, i8**) #1

declare dso_local i64 @krb5_kt_get_entry(i32, i32, i32, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @compare_keyblock(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @krb5_warnx(i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @krb5_kt_free_entry(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @krb5_kt_add_entry(i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @krb5_kt_end_seq_get(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
