; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_dnssec.c_ldns_nsec3_exact_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_dnssec.c_ldns_nsec3_exact_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@verbosity = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c";; finding exact match for \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"TYPE%d \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"no qname, nsec3s or list empty\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c";; owner name hashes to: \00", align 1
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c";; Found.\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c";; Not foud.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_nsec3_exact_match(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_3__*, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %18, align 8
  %19 = load i32, i32* @verbosity, align 4
  %20 = icmp sge i32 %19, 4
  br i1 %20, label %21, label %45

21:                                               ; preds = %3
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.TYPE_3__* @ldns_rr_descript(i32 %23)
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %17, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  br label %40

37:                                               ; preds = %27, %21
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32, i32* @stdout, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @ldns_rdf_print(i32 %41, i32* %42)
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %3
  %46 = load i32*, i32** %5, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32*, i32** %7, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32*, i32** %7, align 8
  %53 = call i64 @ldns_rr_list_rr_count(i32* %52)
  %54 = icmp ult i64 %53, 1
  br i1 %54, label %55, label %61

55:                                               ; preds = %51, %48, %45
  %56 = load i32, i32* @verbosity, align 4
  %57 = icmp sge i32 %56, 4
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %55
  store i32* null, i32** %4, align 8
  br label %161

61:                                               ; preds = %51
  %62 = load i32*, i32** %7, align 8
  %63 = call i32* @ldns_rr_list_rr(i32* %62, i64 0)
  store i32* %63, i32** %15, align 8
  %64 = load i32*, i32** %15, align 8
  %65 = call i32 @ldns_nsec3_algorithm(i32* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32*, i32** %15, align 8
  %67 = call i32 @ldns_nsec3_salt_length(i32* %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32*, i32** %15, align 8
  %69 = call i32* @ldns_nsec3_salt_data(i32* %68)
  store i32* %69, i32** %11, align 8
  %70 = load i32*, i32** %15, align 8
  %71 = call i32 @ldns_nsec3_iterations(i32* %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32*, i32** %11, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  br label %140

75:                                               ; preds = %61
  %76 = load i32*, i32** %5, align 8
  %77 = call i32* @ldns_rdf_clone(i32* %76)
  store i32* %77, i32** %12, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %140

81:                                               ; preds = %75
  %82 = load i32, i32* @verbosity, align 4
  %83 = icmp sge i32 %82, 4
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %81
  %87 = load i32*, i32** %12, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = call i32* @ldns_nsec3_hash_name(i32* %87, i32 %88, i32 %89, i32 %90, i32* %91)
  store i32* %92, i32** %13, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %140

96:                                               ; preds = %86
  %97 = load i32*, i32** %15, align 8
  %98 = call i32 @ldns_rr_owner(i32* %97)
  %99 = call i32* @ldns_dname_left_chop(i32 %98)
  store i32* %99, i32** %18, align 8
  %100 = load i32*, i32** %18, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %140

103:                                              ; preds = %96
  %104 = load i32*, i32** %13, align 8
  %105 = load i32*, i32** %18, align 8
  %106 = call i64 @ldns_dname_cat(i32* %104, i32* %105)
  %107 = load i64, i64* @LDNS_STATUS_OK, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %140

110:                                              ; preds = %103
  %111 = load i32, i32* @verbosity, align 4
  %112 = icmp sge i32 %111, 4
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i32, i32* @stdout, align 4
  %115 = load i32*, i32** %13, align 8
  %116 = call i32 @ldns_rdf_print(i32 %114, i32* %115)
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %118

118:                                              ; preds = %113, %110
  store i64 0, i64* %14, align 8
  br label %119

119:                                              ; preds = %136, %118
  %120 = load i64, i64* %14, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = call i64 @ldns_rr_list_rr_count(i32* %121)
  %123 = icmp ult i64 %120, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %119
  %125 = load i32*, i32** %7, align 8
  %126 = load i64, i64* %14, align 8
  %127 = call i32* @ldns_rr_list_rr(i32* %125, i64 %126)
  store i32* %127, i32** %15, align 8
  %128 = load i32*, i32** %15, align 8
  %129 = call i32 @ldns_rr_owner(i32* %128)
  %130 = load i32*, i32** %13, align 8
  %131 = call i64 @ldns_dname_compare(i32 %129, i32* %130)
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %124
  %134 = load i32*, i32** %15, align 8
  store i32* %134, i32** %16, align 8
  br label %140

135:                                              ; preds = %124
  br label %136

136:                                              ; preds = %135
  %137 = load i64, i64* %14, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %14, align 8
  br label %119

139:                                              ; preds = %119
  br label %140

140:                                              ; preds = %139, %133, %109, %102, %95, %80, %74
  %141 = load i32*, i32** %18, align 8
  %142 = call i32 @ldns_rdf_deep_free(i32* %141)
  %143 = load i32*, i32** %12, align 8
  %144 = call i32 @ldns_rdf_deep_free(i32* %143)
  %145 = load i32*, i32** %13, align 8
  %146 = call i32 @ldns_rdf_deep_free(i32* %145)
  %147 = load i32*, i32** %11, align 8
  %148 = call i32 @LDNS_FREE(i32* %147)
  %149 = load i32, i32* @verbosity, align 4
  %150 = icmp sge i32 %149, 4
  br i1 %150, label %151, label %159

151:                                              ; preds = %140
  %152 = load i32*, i32** %16, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %158

156:                                              ; preds = %151
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %154
  br label %159

159:                                              ; preds = %158, %140
  %160 = load i32*, i32** %16, align 8
  store i32* %160, i32** %4, align 8
  br label %161

161:                                              ; preds = %159, %60
  %162 = load i32*, i32** %4, align 8
  ret i32* %162
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.TYPE_3__* @ldns_rr_descript(i32) #1

declare dso_local i32 @ldns_rdf_print(i32, i32*) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32* @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i32 @ldns_nsec3_algorithm(i32*) #1

declare dso_local i32 @ldns_nsec3_salt_length(i32*) #1

declare dso_local i32* @ldns_nsec3_salt_data(i32*) #1

declare dso_local i32 @ldns_nsec3_iterations(i32*) #1

declare dso_local i32* @ldns_rdf_clone(i32*) #1

declare dso_local i32* @ldns_nsec3_hash_name(i32*, i32, i32, i32, i32*) #1

declare dso_local i32* @ldns_dname_left_chop(i32) #1

declare dso_local i32 @ldns_rr_owner(i32*) #1

declare dso_local i64 @ldns_dname_cat(i32*, i32*) #1

declare dso_local i64 @ldns_dname_compare(i32, i32*) #1

declare dso_local i32 @ldns_rdf_deep_free(i32*) #1

declare dso_local i32 @LDNS_FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
