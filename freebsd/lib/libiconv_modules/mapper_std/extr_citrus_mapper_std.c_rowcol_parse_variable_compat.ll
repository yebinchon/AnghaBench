; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/mapper_std/extr_citrus_mapper_std.c_rowcol_parse_variable_compat.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/mapper_std/extr_citrus_mapper_std.c_rowcol_parse_variable_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_mapper_std_rowcol = type { i32, i32, i32, %struct._citrus_mapper_std_linear_zone*, i8*, i8* }
%struct._citrus_mapper_std_linear_zone = type { i32 }
%struct._region = type { i32 }
%struct._citrus_mapper_std_rowcol_info_compat_x = type { i32, i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._citrus_mapper_std_rowcol*, %struct._region*)* @rowcol_parse_variable_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rowcol_parse_variable_compat(%struct._citrus_mapper_std_rowcol* %0, %struct._region* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._citrus_mapper_std_rowcol*, align 8
  %5 = alloca %struct._region*, align 8
  %6 = alloca %struct._citrus_mapper_std_rowcol_info_compat_x*, align 8
  %7 = alloca %struct._citrus_mapper_std_linear_zone*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct._citrus_mapper_std_rowcol* %0, %struct._citrus_mapper_std_rowcol** %4, align 8
  store %struct._region* %1, %struct._region** %5, align 8
  %11 = load %struct._region*, %struct._region** %5, align 8
  %12 = call %struct._citrus_mapper_std_rowcol_info_compat_x* @_region_head(%struct._region* %11)
  store %struct._citrus_mapper_std_rowcol_info_compat_x* %12, %struct._citrus_mapper_std_rowcol_info_compat_x** %6, align 8
  %13 = load %struct._citrus_mapper_std_rowcol_info_compat_x*, %struct._citrus_mapper_std_rowcol_info_compat_x** %6, align 8
  %14 = getelementptr inbounds %struct._citrus_mapper_std_rowcol_info_compat_x, %struct._citrus_mapper_std_rowcol_info_compat_x* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @be32toh(i32 %15)
  %17 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %4, align 8
  %18 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %17, i32 0, i32 5
  store i8* %16, i8** %18, align 8
  %19 = load %struct._citrus_mapper_std_rowcol_info_compat_x*, %struct._citrus_mapper_std_rowcol_info_compat_x** %6, align 8
  %20 = getelementptr inbounds %struct._citrus_mapper_std_rowcol_info_compat_x, %struct._citrus_mapper_std_rowcol_info_compat_x* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @be32toh(i32 %21)
  %23 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %4, align 8
  %24 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  %25 = load %struct._citrus_mapper_std_rowcol_info_compat_x*, %struct._citrus_mapper_std_rowcol_info_compat_x** %6, align 8
  %26 = getelementptr inbounds %struct._citrus_mapper_std_rowcol_info_compat_x, %struct._citrus_mapper_std_rowcol_info_compat_x* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @be32toh(i32 %27)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %30, 1
  %32 = shl i32 1, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %33, 1
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %4, align 8
  %39 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %4, align 8
  %42 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = call %struct._citrus_mapper_std_linear_zone* @malloc(i32 8)
  %44 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %4, align 8
  %45 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %44, i32 0, i32 3
  store %struct._citrus_mapper_std_linear_zone* %43, %struct._citrus_mapper_std_linear_zone** %45, align 8
  %46 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %4, align 8
  %47 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %46, i32 0, i32 3
  %48 = load %struct._citrus_mapper_std_linear_zone*, %struct._citrus_mapper_std_linear_zone** %47, align 8
  %49 = icmp eq %struct._citrus_mapper_std_linear_zone* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %2
  %51 = load i32, i32* @ENOMEM, align 4
  store i32 %51, i32* %3, align 4
  br label %109

52:                                               ; preds = %2
  %53 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %4, align 8
  %54 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %53, i32 0, i32 3
  %55 = load %struct._citrus_mapper_std_linear_zone*, %struct._citrus_mapper_std_linear_zone** %54, align 8
  store %struct._citrus_mapper_std_linear_zone* %55, %struct._citrus_mapper_std_linear_zone** %7, align 8
  %56 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %4, align 8
  %57 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %56, i32 0, i32 2
  store i32 1, i32* %57, align 8
  %58 = load %struct._citrus_mapper_std_rowcol_info_compat_x*, %struct._citrus_mapper_std_rowcol_info_compat_x** %6, align 8
  %59 = getelementptr inbounds %struct._citrus_mapper_std_rowcol_info_compat_x, %struct._citrus_mapper_std_rowcol_info_compat_x* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @be32toh(i32 %60)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %8, align 4
  %63 = load %struct._citrus_mapper_std_rowcol_info_compat_x*, %struct._citrus_mapper_std_rowcol_info_compat_x** %6, align 8
  %64 = getelementptr inbounds %struct._citrus_mapper_std_rowcol_info_compat_x, %struct._citrus_mapper_std_rowcol_info_compat_x* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @be32toh(i32 %65)
  %67 = ptrtoint i8* %66 to i32
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %68, %69
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %52
  %73 = load %struct._citrus_mapper_std_linear_zone*, %struct._citrus_mapper_std_linear_zone** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @set_linear_zone(%struct._citrus_mapper_std_linear_zone* %73, i32 %74, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %4, align 8
  %81 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %80, i32 0, i32 3
  %82 = load %struct._citrus_mapper_std_linear_zone*, %struct._citrus_mapper_std_linear_zone** %81, align 8
  %83 = call i32 @free(%struct._citrus_mapper_std_linear_zone* %82)
  %84 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %4, align 8
  %85 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %84, i32 0, i32 3
  store %struct._citrus_mapper_std_linear_zone* null, %struct._citrus_mapper_std_linear_zone** %85, align 8
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %3, align 4
  br label %109

87:                                               ; preds = %72
  %88 = load %struct._citrus_mapper_std_rowcol*, %struct._citrus_mapper_std_rowcol** %4, align 8
  %89 = getelementptr inbounds %struct._citrus_mapper_std_rowcol, %struct._citrus_mapper_std_rowcol* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  %92 = load %struct._citrus_mapper_std_linear_zone*, %struct._citrus_mapper_std_linear_zone** %7, align 8
  %93 = getelementptr inbounds %struct._citrus_mapper_std_linear_zone, %struct._citrus_mapper_std_linear_zone* %92, i32 1
  store %struct._citrus_mapper_std_linear_zone* %93, %struct._citrus_mapper_std_linear_zone** %7, align 8
  br label %94

94:                                               ; preds = %87, %52
  %95 = load %struct._citrus_mapper_std_rowcol_info_compat_x*, %struct._citrus_mapper_std_rowcol_info_compat_x** %6, align 8
  %96 = getelementptr inbounds %struct._citrus_mapper_std_rowcol_info_compat_x, %struct._citrus_mapper_std_rowcol_info_compat_x* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @be32toh(i32 %97)
  %99 = ptrtoint i8* %98 to i32
  store i32 %99, i32* %8, align 4
  %100 = load %struct._citrus_mapper_std_rowcol_info_compat_x*, %struct._citrus_mapper_std_rowcol_info_compat_x** %6, align 8
  %101 = getelementptr inbounds %struct._citrus_mapper_std_rowcol_info_compat_x, %struct._citrus_mapper_std_rowcol_info_compat_x* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @be32toh(i32 %102)
  %104 = ptrtoint i8* %103 to i32
  store i32 %104, i32* %9, align 4
  %105 = load %struct._citrus_mapper_std_linear_zone*, %struct._citrus_mapper_std_linear_zone** %7, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @set_linear_zone(%struct._citrus_mapper_std_linear_zone* %105, i32 %106, i32 %107)
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %94, %79, %50
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct._citrus_mapper_std_rowcol_info_compat_x* @_region_head(%struct._region*) #1

declare dso_local i8* @be32toh(i32) #1

declare dso_local %struct._citrus_mapper_std_linear_zone* @malloc(i32) #1

declare dso_local i32 @set_linear_zone(%struct._citrus_mapper_std_linear_zone*, i32, i32) #1

declare dso_local i32 @free(%struct._citrus_mapper_std_linear_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
