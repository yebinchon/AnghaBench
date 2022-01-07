; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/admin/extr_purge.c_kt_purge.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/admin/extr_purge.c_kt_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.purge_options = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.e = type { i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@context = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"unparasable time `%s'\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@keytab_string = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"ignoring extra entry\00", align 1
@verbose_flag = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"removing %s vno %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"remove\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kt_purge(%struct.purge_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.purge_options*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.e*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.e*, align 8
  %16 = alloca i8*, align 8
  store %struct.purge_options* %0, %struct.purge_options** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i64 0, i64* %8, align 8
  store %struct.e* null, %struct.e** %13, align 8
  %17 = load %struct.purge_options*, %struct.purge_options** %5, align 8
  %18 = getelementptr inbounds %struct.purge_options, %struct.purge_options* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @parse_time(i32 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load i32, i32* @context, align 4
  %25 = load %struct.purge_options*, %struct.purge_options** %5, align 8
  %26 = getelementptr inbounds %struct.purge_options, %struct.purge_options* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i32 1, i32* %4, align 4
  br label %147

29:                                               ; preds = %3
  %30 = call i32* (...) @ktutil_open_keytab()
  store i32* %30, i32** %10, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %147

33:                                               ; preds = %29
  %34 = load i32, i32* @context, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = call i64 @krb5_kt_start_seq_get(i32 %34, i32* %35, i32* %9)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i32, i32* @context, align 4
  %41 = load i64, i64* %8, align 8
  %42 = load i32, i32* @keytab_string, align 4
  %43 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %40, i64 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %140

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %50, %44
  %46 = load i32, i32* @context, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = call i64 @krb5_kt_next_entry(i32 %46, i32* %47, %struct.TYPE_5__* %11, i32* %9)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @add_entry(i32 %52, i64 %54, i32 %56, %struct.e** %13)
  %58 = load i32, i32* @context, align 4
  %59 = call i32 @krb5_kt_free_entry(i32 %58, %struct.TYPE_5__* %11)
  br label %45

60:                                               ; preds = %45
  %61 = load i32, i32* @context, align 4
  %62 = load i32*, i32** %10, align 8
  %63 = call i64 @krb5_kt_end_seq_get(i32 %61, i32* %62, i32* %9)
  %64 = call i32 @time(i32* null)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* @context, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = call i64 @krb5_kt_start_seq_get(i32 %65, i32* %66, i32* %9)
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = load i32, i32* @context, align 4
  %72 = load i64, i64* %8, align 8
  %73 = load i32, i32* @keytab_string, align 4
  %74 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %71, i64 %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %140

75:                                               ; preds = %60
  br label %76

76:                                               ; preds = %131, %88, %75
  %77 = load i32, i32* @context, align 4
  %78 = load i32*, i32** %10, align 8
  %79 = call i64 @krb5_kt_next_entry(i32 %77, i32* %78, %struct.TYPE_5__* %11, i32* %9)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %134

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.e*, %struct.e** %13, align 8
  %85 = call %struct.e* @get_entry(i32 %83, %struct.e* %84)
  store %struct.e* %85, %struct.e** %15, align 8
  %86 = load %struct.e*, %struct.e** %15, align 8
  %87 = icmp eq %struct.e* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i32, i32* @context, align 4
  %90 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %76

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.e*, %struct.e** %15, align 8
  %95 = getelementptr inbounds %struct.e, %struct.e* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp slt i64 %93, %96
  br i1 %97, label %98, label %131

98:                                               ; preds = %91
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.e*, %struct.e** %15, align 8
  %101 = getelementptr inbounds %struct.e, %struct.e* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %99, %102
  %104 = load i32, i32* %12, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %131

106:                                              ; preds = %98
  %107 = load i64, i64* @verbose_flag, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %106
  %110 = load i32, i32* @context, align 4
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @krb5_unparse_name(i32 %110, i32 %112, i8** %16)
  %114 = load i8*, i8** %16, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %114, i64 %116)
  %118 = load i8*, i8** %16, align 8
  %119 = call i32 @free(i8* %118)
  br label %120

120:                                              ; preds = %109, %106
  %121 = load i32, i32* @context, align 4
  %122 = load i32*, i32** %10, align 8
  %123 = call i64 @krb5_kt_remove_entry(i32 %121, i32* %122, %struct.TYPE_5__* %11)
  store i64 %123, i64* %8, align 8
  %124 = load i64, i64* %8, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load i32, i32* @context, align 4
  %128 = load i64, i64* %8, align 8
  %129 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %127, i64 %128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %130

130:                                              ; preds = %126, %120
  br label %131

131:                                              ; preds = %130, %98, %91
  %132 = load i32, i32* @context, align 4
  %133 = call i32 @krb5_kt_free_entry(i32 %132, %struct.TYPE_5__* %11)
  br label %76

134:                                              ; preds = %76
  %135 = load i32, i32* @context, align 4
  %136 = load i32*, i32** %10, align 8
  %137 = call i64 @krb5_kt_end_seq_get(i32 %135, i32* %136, i32* %9)
  store i64 %137, i64* %8, align 8
  %138 = load %struct.e*, %struct.e** %13, align 8
  %139 = call i32 @delete_list(%struct.e* %138)
  br label %140

140:                                              ; preds = %134, %70, %39
  %141 = load i32, i32* @context, align 4
  %142 = load i32*, i32** %10, align 8
  %143 = call i32 @krb5_kt_close(i32 %141, i32* %142)
  %144 = load i64, i64* %8, align 8
  %145 = icmp ne i64 %144, 0
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %140, %32, %23
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @parse_time(i32, i8*) #1

declare dso_local i32 @krb5_warnx(i32, i8*, ...) #1

declare dso_local i32* @ktutil_open_keytab(...) #1

declare dso_local i64 @krb5_kt_start_seq_get(i32, i32*, i32*) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*, ...) #1

declare dso_local i64 @krb5_kt_next_entry(i32, i32*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @add_entry(i32, i64, i32, %struct.e**) #1

declare dso_local i32 @krb5_kt_free_entry(i32, %struct.TYPE_5__*) #1

declare dso_local i64 @krb5_kt_end_seq_get(i32, i32*, i32*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.e* @get_entry(i32, %struct.e*) #1

declare dso_local i32 @krb5_unparse_name(i32, i32, i8**) #1

declare dso_local i32 @printf(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @krb5_kt_remove_entry(i32, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @delete_list(%struct.e*) #1

declare dso_local i32 @krb5_kt_close(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
