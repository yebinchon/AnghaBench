; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_ext.c_hdb_replace_extension.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_ext.c_hdb_replace_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@choice_HDB_extension_data_asn1_ellipsis = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"hdb: failed to decode replacement hdb extention\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"hdb: failed to decode present hdb extention\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"hdb: failed to copy replacement hdb extention\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"hdb: failed to copy new extension\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdb_replace_extension(i32 %0, %struct.TYPE_20__* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_21__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %8, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = icmp eq %struct.TYPE_16__* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %3
  %25 = call %struct.TYPE_16__* @calloc(i32 1, i32 16)
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %27, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = icmp eq %struct.TYPE_16__* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = call i32 @krb5_set_error_message(i32 %33, i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENOMEM, align 4
  store i32 %36, i32* %4, align 4
  br label %209

37:                                               ; preds = %24
  br label %136

38:                                               ; preds = %3
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @choice_HDB_extension_data_asn1_ellipsis, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call %struct.TYPE_21__* @hdb_find_extension(%struct.TYPE_20__* %46, i64 %50)
  store %struct.TYPE_21__* %51, %struct.TYPE_21__** %8, align 8
  br label %135

52:                                               ; preds = %38
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @der_get_tag(i32 %58, i32 %64, i32* %11, i32* %13, i32* %15, i64* %17)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %52
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @krb5_set_error_message(i32 %69, i32 %70, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %4, align 4
  br label %209

73:                                               ; preds = %52
  store i64 0, i64* %18, align 8
  br label %74

74:                                               ; preds = %131, %73
  %75 = load i64, i64* %18, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ult i64 %75, %80
  br i1 %81, label %82, label %134

82:                                               ; preds = %74
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %86, align 8
  %88 = load i64, i64* %18, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i64 %88
  store %struct.TYPE_21__* %89, %struct.TYPE_21__** %19, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @choice_HDB_extension_data_asn1_ellipsis, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %82
  br label %131

97:                                               ; preds = %82
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @der_get_tag(i32 %103, i32 %109, i32* %12, i32* %14, i32* %16, i64* %17)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %97
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @krb5_set_error_message(i32 %114, i32 %115, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %4, align 4
  br label %209

118:                                              ; preds = %97
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = call i64 @MAKE_TAG(i32 %119, i32 %120, i32 %121)
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = call i64 @MAKE_TAG(i32 %123, i32 %124, i32 %125)
  %127 = icmp eq i64 %122, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %118
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  store %struct.TYPE_21__* %129, %struct.TYPE_21__** %8, align 8
  br label %134

130:                                              ; preds = %118
  br label %131

131:                                              ; preds = %130, %96
  %132 = load i64, i64* %18, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %18, align 8
  br label %74

134:                                              ; preds = %128, %74
  br label %135

135:                                              ; preds = %134, %45
  br label %136

136:                                              ; preds = %135, %37
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %138 = icmp ne %struct.TYPE_21__* %137, null
  br i1 %138, label %139, label %153

139:                                              ; preds = %136
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %141 = call i32 @free_HDB_extension(%struct.TYPE_21__* %140)
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %144 = call i32 @copy_HDB_extension(%struct.TYPE_21__* %142, %struct.TYPE_21__* %143)
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %139
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @krb5_set_error_message(i32 %148, i32 %149, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %151

151:                                              ; preds = %147, %139
  %152 = load i32, i32* %10, align 4
  store i32 %152, i32* %4, align 4
  br label %209

153:                                              ; preds = %136
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %157, align 8
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = add i64 %163, 1
  %165 = mul i64 %164, 16
  %166 = trunc i64 %165 to i32
  %167 = call %struct.TYPE_21__* @realloc(%struct.TYPE_21__* %158, i32 %166)
  store %struct.TYPE_21__* %167, %struct.TYPE_21__** %9, align 8
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %169 = icmp eq %struct.TYPE_21__* %168, null
  br i1 %169, label %170, label %175

170:                                              ; preds = %153
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* @ENOMEM, align 4
  %173 = call i32 @krb5_set_error_message(i32 %171, i32 %172, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %174 = load i32, i32* @ENOMEM, align 4
  store i32 %174, i32* %4, align 4
  br label %209

175:                                              ; preds = %153
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 1
  store %struct.TYPE_21__* %176, %struct.TYPE_21__** %180, align 8
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %185, align 8
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i64 %191
  %193 = call i32 @copy_HDB_extension(%struct.TYPE_21__* %181, %struct.TYPE_21__* %192)
  store i32 %193, i32* %10, align 4
  %194 = load i32, i32* %10, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %175
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %200, align 8
  br label %207

203:                                              ; preds = %175
  %204 = load i32, i32* %5, align 4
  %205 = load i32, i32* %10, align 4
  %206 = call i32 @krb5_set_error_message(i32 %204, i32 %205, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %207

207:                                              ; preds = %203, %196
  %208 = load i32, i32* %10, align 4
  store i32 %208, i32* %4, align 4
  br label %209

209:                                              ; preds = %207, %170, %151, %113, %68, %32
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local %struct.TYPE_16__* @calloc(i32, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*) #1

declare dso_local %struct.TYPE_21__* @hdb_find_extension(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @der_get_tag(i32, i32, i32*, i32*, i32*, i64*) #1

declare dso_local i64 @MAKE_TAG(i32, i32, i32) #1

declare dso_local i32 @free_HDB_extension(%struct.TYPE_21__*) #1

declare dso_local i32 @copy_HDB_extension(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @realloc(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
