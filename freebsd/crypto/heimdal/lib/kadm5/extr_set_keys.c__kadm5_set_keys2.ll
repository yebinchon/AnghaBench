; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_set_keys.c__kadm5_set_keys2.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_set_keys.c__kadm5_set_keys2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__*, %struct.TYPE_17__, i32* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32*, i32*, i32* }

@ENOMEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_kadm5_set_keys2(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1, i32 %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %9, align 8
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = zext i32 %16 to i64
  %18 = mul i64 %17, 24
  %19 = trunc i64 %18 to i32
  %20 = call %struct.TYPE_23__* @malloc(i32 %19)
  store %struct.TYPE_23__* %20, %struct.TYPE_23__** %13, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %22 = icmp eq %struct.TYPE_23__* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i64, i64* @ENOMEM, align 8
  store i64 %27, i64* %5, align 8
  br label %181

28:                                               ; preds = %23, %4
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @_kadm5_init_keys(%struct.TYPE_23__* %29, i32 %30)
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %139, %28
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %142

36:                                               ; preds = %32
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  store i32 %49, i32* %55, align 4
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @krb5_data_copy(i32* %61, i32 %69, i32 %77)
  store i64 %78, i64* %10, align 8
  %79 = load i64, i64* %10, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %36
  br label %173

82:                                               ; preds = %36
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %132

90:                                               ; preds = %82
  %91 = call %struct.TYPE_22__* @calloc(i32 1, i32 8)
  store %struct.TYPE_22__* %91, %struct.TYPE_22__** %14, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %93 = icmp eq %struct.TYPE_22__* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i64, i64* @ENOMEM, align 8
  store i64 %95, i64* %10, align 8
  br label %173

96:                                               ; preds = %90
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 0
  store %struct.TYPE_22__* %97, %struct.TYPE_22__** %102, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @krb5_data_copy(i32* %114, i32 %122, i32 %130)
  br label %138

132:                                              ; preds = %82
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %137, align 8
  br label %138

138:                                              ; preds = %132, %96
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  br label %32

142:                                              ; preds = %32
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %152, align 8
  %154 = call i32 @_kadm5_free_keys(i32 %145, i32 %149, %struct.TYPE_23__* %153)
  %155 = load i32, i32* %12, align 4
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 0
  store i32 %155, i32* %158, align 8
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 1
  store %struct.TYPE_23__* %159, %struct.TYPE_23__** %162, align 8
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %167 = call i32 @hdb_entry_set_pw_change_time(i32 %165, %struct.TYPE_21__* %166, i32 0)
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %172 = call i32 @hdb_entry_clear_password(i32 %170, %struct.TYPE_21__* %171)
  store i64 0, i64* %5, align 8
  br label %181

173:                                              ; preds = %94, %81
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %12, align 4
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %179 = call i32 @_kadm5_free_keys(i32 %176, i32 %177, %struct.TYPE_23__* %178)
  %180 = load i64, i64* %10, align 8
  store i64 %180, i64* %5, align 8
  br label %181

181:                                              ; preds = %173, %142, %26
  %182 = load i64, i64* %5, align 8
  ret i64 %182
}

declare dso_local %struct.TYPE_23__* @malloc(i32) #1

declare dso_local i32 @_kadm5_init_keys(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @krb5_data_copy(i32*, i32, i32) #1

declare dso_local %struct.TYPE_22__* @calloc(i32, i32) #1

declare dso_local i32 @_kadm5_free_keys(i32, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @hdb_entry_set_pw_change_time(i32, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @hdb_entry_clear_password(i32, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
