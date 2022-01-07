; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c__hx509_cert_is_parent_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c__hx509_cert_is_parent_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32, i32, %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_31__ = type { i32*, %struct.TYPE_29__*, i32* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__, i32 }
%struct.TYPE_25__ = type { i32 }

@HX509_EXTENSION_NOT_FOUND = common dso_local global i32 0, align 4
@choice_GeneralName_directoryName = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hx509_cert_is_parent_cmp(%struct.TYPE_23__* %0, %struct.TYPE_23__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_31__, align 8
  %10 = alloca %struct.TYPE_31__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_32__, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 2
  %21 = call i32 @_hx509_name_cmp(i32* %17, %struct.TYPE_32__* %20, i32* %8)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %4, align 4
  br label %171

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %171

31:                                               ; preds = %26
  %32 = call i32 @memset(%struct.TYPE_31__* %9, i32 0, i32 24)
  %33 = call i32 @memset(%struct.TYPE_31__* %10, i32 0, i32 24)
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %35 = call i32 @find_extension_auth_key_id(%struct.TYPE_23__* %34, %struct.TYPE_31__* %9)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @HX509_EXTENSION_NOT_FOUND, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %171

43:                                               ; preds = %38, %31
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %45 = call i32 @_hx509_find_extension_subject_key_id(%struct.TYPE_23__* %44, %struct.TYPE_31__* %10)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @HX509_EXTENSION_NOT_FOUND, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 -1, i32* %4, align 4
  br label %171

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %167

60:                                               ; preds = %56, %53
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %167

64:                                               ; preds = %60
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 0, i32* %8, align 4
  br label %167

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 -1, i32* %8, align 4
  br label %167

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77, %64
  %79 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %158

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 1
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %83, align 8
  %85 = icmp eq %struct.TYPE_29__* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 -1, i32* %4, align 4
  br label %171

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 -1, i32* %4, align 4
  br label %171

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %96, i32 0, i32 1
  %98 = call i32 @der_heim_integer_cmp(i32* %94, i32* %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %4, align 4
  br label %171

103:                                              ; preds = %92
  %104 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 1
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 1
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32 -1, i32* %4, align 4
  br label %171

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 1
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @choice_GeneralName_directoryName, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  store i32 -1, i32* %4, align 4
  br label %171

121:                                              ; preds = %110
  %122 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 1
  %123 = load %struct.TYPE_29__*, %struct.TYPE_29__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %14, i32 0, i32 1
  store i32 %130, i32* %131, align 4
  %132 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 1
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %14, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %145, i32 0, i32 0
  %147 = call i32 @_hx509_name_cmp(i32* %146, %struct.TYPE_32__* %14, i32* %8)
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %121
  %151 = load i32, i32* %13, align 4
  store i32 %151, i32* %4, align 4
  br label %171

152:                                              ; preds = %121
  %153 = load i32, i32* %8, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = load i32, i32* %8, align 4
  store i32 %156, i32* %4, align 4
  br label %171

157:                                              ; preds = %152
  store i32 0, i32* %8, align 4
  br label %162

158:                                              ; preds = %78
  %159 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @der_heim_octet_string_cmp(i32* %160, %struct.TYPE_31__* %10)
  store i32 %161, i32* %8, align 4
  br label %162

162:                                              ; preds = %158, %157
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  br label %167

166:                                              ; preds = %162
  br label %167

167:                                              ; preds = %166, %165, %75, %70, %63, %59
  %168 = call i32 @free_AuthorityKeyIdentifier(%struct.TYPE_31__* %9)
  %169 = call i32 @free_SubjectKeyIdentifier(%struct.TYPE_31__* %10)
  %170 = load i32, i32* %8, align 4
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %167, %155, %150, %120, %109, %101, %91, %86, %52, %42, %29, %24
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i32 @_hx509_name_cmp(i32*, %struct.TYPE_32__*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @find_extension_auth_key_id(%struct.TYPE_23__*, %struct.TYPE_31__*) #1

declare dso_local i32 @_hx509_find_extension_subject_key_id(%struct.TYPE_23__*, %struct.TYPE_31__*) #1

declare dso_local i32 @der_heim_integer_cmp(i32*, i32*) #1

declare dso_local i32 @der_heim_octet_string_cmp(i32*, %struct.TYPE_31__*) #1

declare dso_local i32 @free_AuthorityKeyIdentifier(%struct.TYPE_31__*) #1

declare dso_local i32 @free_SubjectKeyIdentifier(%struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
