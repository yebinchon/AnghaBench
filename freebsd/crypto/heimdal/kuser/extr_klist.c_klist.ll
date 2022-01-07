; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_klist.c_klist.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_klist.c_klist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.klist_options = type { i64, i64, i64, i32, i32, i32, i64, i64, i64, i64, i64, i64 }

@kcc_context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"krb5_cc_cache_get_first\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"krb5_cc_resolve\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @klist(%struct.klist_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.klist_options*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.klist_options* %0, %struct.klist_options** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.klist_options*, %struct.klist_options** %5, align 8
  %15 = getelementptr inbounds %struct.klist_options, %struct.klist_options* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %3
  %19 = load %struct.klist_options*, %struct.klist_options** %5, align 8
  %20 = getelementptr inbounds %struct.klist_options, %struct.klist_options* %19, i32 0, i32 11
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.klist_options*, %struct.klist_options** %5, align 8
  %25 = getelementptr inbounds %struct.klist_options, %struct.klist_options* %24, i32 0, i32 10
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %23, %18, %3
  %29 = phi i1 [ true, %18 ], [ true, %3 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = load %struct.klist_options*, %struct.klist_options** %5, align 8
  %32 = getelementptr inbounds %struct.klist_options, %struct.klist_options* %31, i32 0, i32 9
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = load %struct.klist_options*, %struct.klist_options** %5, align 8
  %37 = getelementptr inbounds %struct.klist_options, %struct.klist_options* %36, i32 0, i32 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %35, %28
  %41 = phi i1 [ true, %28 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %11, align 4
  %43 = load %struct.klist_options*, %struct.klist_options** %5, align 8
  %44 = getelementptr inbounds %struct.klist_options, %struct.klist_options* %43, i32 0, i32 7
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32, i32* @kcc_context, align 4
  %49 = call i32 @list_caches(i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %165

51:                                               ; preds = %40
  %52 = load %struct.klist_options*, %struct.klist_options** %5, align 8
  %53 = getelementptr inbounds %struct.klist_options, %struct.klist_options* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %139

56:                                               ; preds = %51
  %57 = load %struct.klist_options*, %struct.klist_options** %5, align 8
  %58 = getelementptr inbounds %struct.klist_options, %struct.klist_options* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %95

61:                                               ; preds = %56
  %62 = load i32, i32* @kcc_context, align 4
  %63 = call i32 @krb5_cc_cache_get_first(i32 %62, i32* null, i32* %13)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* @kcc_context, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 (i32, i32, i32, i8*, ...) @krb5_err(i32 %67, i32 1, i32 %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %66, %61
  br label %71

71:                                               ; preds = %76, %70
  %72 = load i32, i32* @kcc_context, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i64 @krb5_cc_cache_next(i32 %72, i32 %73, i32* %12)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %71
  %77 = load i32, i32* @kcc_context, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.klist_options*, %struct.klist_options** %5, align 8
  %82 = getelementptr inbounds %struct.klist_options, %struct.klist_options* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.klist_options*, %struct.klist_options** %5, align 8
  %85 = getelementptr inbounds %struct.klist_options, %struct.klist_options* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @display_v5_ccache(i32 %77, i32 %78, i32 %79, i32 %80, i32 %83, i32 %86)
  %88 = load i32, i32* %9, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %9, align 4
  %90 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %71

91:                                               ; preds = %71
  %92 = load i32, i32* @kcc_context, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @krb5_cc_cache_end_seq_get(i32 %92, i32 %93)
  br label %138

95:                                               ; preds = %56
  %96 = load %struct.klist_options*, %struct.klist_options** %5, align 8
  %97 = getelementptr inbounds %struct.klist_options, %struct.klist_options* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %95
  %101 = load i32, i32* @kcc_context, align 4
  %102 = load %struct.klist_options*, %struct.klist_options** %5, align 8
  %103 = getelementptr inbounds %struct.klist_options, %struct.klist_options* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @krb5_cc_resolve(i32 %101, i32 %104, i32* %12)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %100
  %109 = load i32, i32* @kcc_context, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.klist_options*, %struct.klist_options** %5, align 8
  %112 = getelementptr inbounds %struct.klist_options, %struct.klist_options* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i32, i32, i32, i8*, ...) @krb5_err(i32 %109, i32 1, i32 %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %108, %100
  br label %126

116:                                              ; preds = %95
  %117 = load i32, i32* @kcc_context, align 4
  %118 = call i32 @krb5_cc_default(i32 %117, i32* %12)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load i32, i32* @kcc_context, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i32 (i32, i32, i32, i8*, ...) @krb5_err(i32 %122, i32 1, i32 %123, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %125

125:                                              ; preds = %121, %116
  br label %126

126:                                              ; preds = %125, %115
  %127 = load i32, i32* @kcc_context, align 4
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.klist_options*, %struct.klist_options** %5, align 8
  %132 = getelementptr inbounds %struct.klist_options, %struct.klist_options* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.klist_options*, %struct.klist_options** %5, align 8
  %135 = getelementptr inbounds %struct.klist_options, %struct.klist_options* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @display_v5_ccache(i32 %127, i32 %128, i32 %129, i32 %130, i32 %133, i32 %136)
  store i32 %137, i32* %9, align 4
  br label %138

138:                                              ; preds = %126, %91
  br label %139

139:                                              ; preds = %138, %51
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %163, label %142

142:                                              ; preds = %139
  %143 = load %struct.klist_options*, %struct.klist_options** %5, align 8
  %144 = getelementptr inbounds %struct.klist_options, %struct.klist_options* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %142
  %148 = call i64 (...) @k_hasafs()
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %147
  %151 = load %struct.klist_options*, %struct.klist_options** %5, align 8
  %152 = getelementptr inbounds %struct.klist_options, %struct.klist_options* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %157

157:                                              ; preds = %155, %150
  %158 = load %struct.klist_options*, %struct.klist_options** %5, align 8
  %159 = getelementptr inbounds %struct.klist_options, %struct.klist_options* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @display_tokens(i64 %160)
  br label %162

162:                                              ; preds = %157, %147, %142
  br label %163

163:                                              ; preds = %162, %139
  %164 = load i32, i32* %9, align 4
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %163, %47
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @list_caches(i32) #1

declare dso_local i32 @krb5_cc_cache_get_first(i32, i32*, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i32, i8*, ...) #1

declare dso_local i64 @krb5_cc_cache_next(i32, i32, i32*) #1

declare dso_local i32 @display_v5_ccache(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @krb5_cc_cache_end_seq_get(i32, i32) #1

declare dso_local i32 @krb5_cc_resolve(i32, i32, i32*) #1

declare dso_local i32 @krb5_cc_default(i32, i32*) #1

declare dso_local i64 @k_hasafs(...) #1

declare dso_local i32 @display_tokens(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
