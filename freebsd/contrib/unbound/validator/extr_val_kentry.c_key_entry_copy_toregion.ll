; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_kentry.c_key_entry_copy_toregion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_kentry.c_key_entry_copy_toregion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_entry_key = type { i32, i8*, %struct.TYPE_2__, i32*, %struct.key_entry_key*, %struct.key_entry_key* }
%struct.TYPE_2__ = type { %struct.key_entry_key*, %struct.key_entry_key* }
%struct.regional = type { i32 }
%struct.key_entry_data = type { i32, i8*, %struct.TYPE_2__, i32*, %struct.key_entry_data*, %struct.key_entry_data* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.key_entry_key* @key_entry_copy_toregion(%struct.key_entry_key* %0, %struct.regional* %1) #0 {
  %3 = alloca %struct.key_entry_key*, align 8
  %4 = alloca %struct.key_entry_key*, align 8
  %5 = alloca %struct.regional*, align 8
  %6 = alloca %struct.key_entry_key*, align 8
  %7 = alloca %struct.key_entry_data*, align 8
  %8 = alloca %struct.key_entry_data*, align 8
  store %struct.key_entry_key* %0, %struct.key_entry_key** %4, align 8
  store %struct.regional* %1, %struct.regional** %5, align 8
  %9 = load %struct.regional*, %struct.regional** %5, align 8
  %10 = load %struct.key_entry_key*, %struct.key_entry_key** %4, align 8
  %11 = call i8* @regional_alloc_init(%struct.regional* %9, %struct.key_entry_key* %10, i32 56)
  %12 = bitcast i8* %11 to %struct.key_entry_key*
  store %struct.key_entry_key* %12, %struct.key_entry_key** %6, align 8
  %13 = load %struct.key_entry_key*, %struct.key_entry_key** %6, align 8
  %14 = icmp ne %struct.key_entry_key* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.key_entry_key* null, %struct.key_entry_key** %3, align 8
  br label %136

16:                                               ; preds = %2
  %17 = load %struct.regional*, %struct.regional** %5, align 8
  %18 = load %struct.key_entry_key*, %struct.key_entry_key** %4, align 8
  %19 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %18, i32 0, i32 5
  %20 = load %struct.key_entry_key*, %struct.key_entry_key** %19, align 8
  %21 = load %struct.key_entry_key*, %struct.key_entry_key** %4, align 8
  %22 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i8* @regional_alloc_init(%struct.regional* %17, %struct.key_entry_key* %20, i32 %23)
  %25 = bitcast i8* %24 to %struct.key_entry_key*
  %26 = load %struct.key_entry_key*, %struct.key_entry_key** %6, align 8
  %27 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %26, i32 0, i32 5
  store %struct.key_entry_key* %25, %struct.key_entry_key** %27, align 8
  %28 = load %struct.key_entry_key*, %struct.key_entry_key** %6, align 8
  %29 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %28, i32 0, i32 5
  %30 = load %struct.key_entry_key*, %struct.key_entry_key** %29, align 8
  %31 = icmp ne %struct.key_entry_key* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %16
  store %struct.key_entry_key* null, %struct.key_entry_key** %3, align 8
  br label %136

33:                                               ; preds = %16
  %34 = load %struct.key_entry_key*, %struct.key_entry_key** %6, align 8
  %35 = load %struct.key_entry_key*, %struct.key_entry_key** %6, align 8
  %36 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store %struct.key_entry_key* %34, %struct.key_entry_key** %37, align 8
  %38 = load %struct.key_entry_key*, %struct.key_entry_key** %6, align 8
  %39 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.key_entry_key*, %struct.key_entry_key** %40, align 8
  %42 = icmp ne %struct.key_entry_key* %41, null
  br i1 %42, label %43, label %134

43:                                               ; preds = %33
  %44 = load %struct.key_entry_key*, %struct.key_entry_key** %4, align 8
  %45 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.key_entry_key*, %struct.key_entry_key** %46, align 8
  %48 = bitcast %struct.key_entry_key* %47 to %struct.key_entry_data*
  store %struct.key_entry_data* %48, %struct.key_entry_data** %7, align 8
  %49 = load %struct.regional*, %struct.regional** %5, align 8
  %50 = load %struct.key_entry_data*, %struct.key_entry_data** %7, align 8
  %51 = bitcast %struct.key_entry_data* %50 to %struct.key_entry_key*
  %52 = call i8* @regional_alloc_init(%struct.regional* %49, %struct.key_entry_key* %51, i32 56)
  %53 = bitcast i8* %52 to %struct.key_entry_data*
  store %struct.key_entry_data* %53, %struct.key_entry_data** %8, align 8
  %54 = load %struct.key_entry_data*, %struct.key_entry_data** %8, align 8
  %55 = icmp ne %struct.key_entry_data* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %43
  store %struct.key_entry_key* null, %struct.key_entry_key** %3, align 8
  br label %136

57:                                               ; preds = %43
  %58 = load %struct.key_entry_data*, %struct.key_entry_data** %7, align 8
  %59 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %58, i32 0, i32 4
  %60 = load %struct.key_entry_data*, %struct.key_entry_data** %59, align 8
  %61 = icmp ne %struct.key_entry_data* %60, null
  br i1 %61, label %62, label %88

62:                                               ; preds = %57
  %63 = load %struct.regional*, %struct.regional** %5, align 8
  %64 = load %struct.key_entry_data*, %struct.key_entry_data** %7, align 8
  %65 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %64, i32 0, i32 4
  %66 = load %struct.key_entry_data*, %struct.key_entry_data** %65, align 8
  %67 = bitcast %struct.key_entry_data* %66 to %struct.key_entry_key*
  %68 = load %struct.key_entry_data*, %struct.key_entry_data** %7, align 8
  %69 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %68, i32 0, i32 4
  %70 = load %struct.key_entry_data*, %struct.key_entry_data** %69, align 8
  %71 = bitcast %struct.key_entry_data* %70 to %struct.key_entry_key*
  %72 = call i32 @packed_rrset_sizeof(%struct.key_entry_key* %71)
  %73 = call i8* @regional_alloc_init(%struct.regional* %63, %struct.key_entry_key* %67, i32 %72)
  %74 = bitcast i8* %73 to %struct.key_entry_data*
  %75 = load %struct.key_entry_data*, %struct.key_entry_data** %8, align 8
  %76 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %75, i32 0, i32 4
  store %struct.key_entry_data* %74, %struct.key_entry_data** %76, align 8
  %77 = load %struct.key_entry_data*, %struct.key_entry_data** %8, align 8
  %78 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %77, i32 0, i32 4
  %79 = load %struct.key_entry_data*, %struct.key_entry_data** %78, align 8
  %80 = icmp ne %struct.key_entry_data* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %62
  store %struct.key_entry_key* null, %struct.key_entry_key** %3, align 8
  br label %136

82:                                               ; preds = %62
  %83 = load %struct.key_entry_data*, %struct.key_entry_data** %8, align 8
  %84 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %83, i32 0, i32 4
  %85 = load %struct.key_entry_data*, %struct.key_entry_data** %84, align 8
  %86 = bitcast %struct.key_entry_data* %85 to %struct.key_entry_key*
  %87 = call i32 @packed_rrset_ptr_fixup(%struct.key_entry_key* %86)
  br label %88

88:                                               ; preds = %82, %57
  %89 = load %struct.key_entry_data*, %struct.key_entry_data** %7, align 8
  %90 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %107

93:                                               ; preds = %88
  %94 = load %struct.regional*, %struct.regional** %5, align 8
  %95 = load %struct.key_entry_data*, %struct.key_entry_data** %7, align 8
  %96 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i8* @regional_strdup(%struct.regional* %94, i8* %97)
  %99 = load %struct.key_entry_data*, %struct.key_entry_data** %8, align 8
  %100 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  %101 = load %struct.key_entry_data*, %struct.key_entry_data** %8, align 8
  %102 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %93
  store %struct.key_entry_key* null, %struct.key_entry_key** %3, align 8
  br label %136

106:                                              ; preds = %93
  br label %107

107:                                              ; preds = %106, %88
  %108 = load %struct.key_entry_data*, %struct.key_entry_data** %7, align 8
  %109 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %128

112:                                              ; preds = %107
  %113 = load %struct.regional*, %struct.regional** %5, align 8
  %114 = load %struct.key_entry_data*, %struct.key_entry_data** %7, align 8
  %115 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = bitcast i32* %116 to i8*
  %118 = call i8* @regional_strdup(%struct.regional* %113, i8* %117)
  %119 = bitcast i8* %118 to i32*
  %120 = load %struct.key_entry_data*, %struct.key_entry_data** %8, align 8
  %121 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %120, i32 0, i32 3
  store i32* %119, i32** %121, align 8
  %122 = load %struct.key_entry_data*, %struct.key_entry_data** %8, align 8
  %123 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %112
  store %struct.key_entry_key* null, %struct.key_entry_key** %3, align 8
  br label %136

127:                                              ; preds = %112
  br label %128

128:                                              ; preds = %127, %107
  %129 = load %struct.key_entry_data*, %struct.key_entry_data** %8, align 8
  %130 = bitcast %struct.key_entry_data* %129 to %struct.key_entry_key*
  %131 = load %struct.key_entry_key*, %struct.key_entry_key** %6, align 8
  %132 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  store %struct.key_entry_key* %130, %struct.key_entry_key** %133, align 8
  br label %134

134:                                              ; preds = %128, %33
  %135 = load %struct.key_entry_key*, %struct.key_entry_key** %6, align 8
  store %struct.key_entry_key* %135, %struct.key_entry_key** %3, align 8
  br label %136

136:                                              ; preds = %134, %126, %105, %81, %56, %32, %15
  %137 = load %struct.key_entry_key*, %struct.key_entry_key** %3, align 8
  ret %struct.key_entry_key* %137
}

declare dso_local i8* @regional_alloc_init(%struct.regional*, %struct.key_entry_key*, i32) #1

declare dso_local i32 @packed_rrset_sizeof(%struct.key_entry_key*) #1

declare dso_local i32 @packed_rrset_ptr_fixup(%struct.key_entry_key*) #1

declare dso_local i8* @regional_strdup(%struct.regional*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
