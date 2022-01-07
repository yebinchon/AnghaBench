; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_grp/extr_cap_grp.c_grp_pack.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_grp/extr_cap_grp.c_grp_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i8*, i8*, i8**, i64 }

@.str = private unnamed_addr constant [8 x i8] c"gr_name\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"gr_passwd\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"gr_gid\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"gr_mem\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"gr_mem[%u]\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"gr_nmem\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.group*, i32*)* @grp_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grp_pack(i32* %0, %struct.group* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.group*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.group* %1, %struct.group** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.group*, %struct.group** %6, align 8
  %12 = icmp eq %struct.group* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %117

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = load %struct.group*, %struct.group** %6, align 8
  %17 = getelementptr inbounds %struct.group, %struct.group* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.group*, %struct.group** %6, align 8
  %20 = getelementptr inbounds %struct.group, %struct.group* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @grp_allowed_group(i32* %15, i8* %18, i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %117

25:                                               ; preds = %14
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @grp_allowed_field(i32* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32*, i32** %7, align 8
  %31 = load %struct.group*, %struct.group** %6, align 8
  %32 = getelementptr inbounds %struct.group, %struct.group* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @nvlist_add_string(i32* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %33)
  br label %38

35:                                               ; preds = %25
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @nvlist_add_string(i32* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %29
  %39 = load i32*, i32** %5, align 8
  %40 = call i64 @grp_allowed_field(i32* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.group*, %struct.group** %6, align 8
  %45 = getelementptr inbounds %struct.group, %struct.group* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @nvlist_add_string(i32* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  br label %51

48:                                               ; preds = %38
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @nvlist_add_string(i32* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %42
  %52 = load i32*, i32** %5, align 8
  %53 = call i64 @grp_allowed_field(i32* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i32*, i32** %7, align 8
  %57 = load %struct.group*, %struct.group** %6, align 8
  %58 = getelementptr inbounds %struct.group, %struct.group* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @nvlist_add_number(i32* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  br label %65

62:                                               ; preds = %51
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @nvlist_add_number(i32* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  br label %65

65:                                               ; preds = %62, %55
  %66 = load i32*, i32** %5, align 8
  %67 = call i64 @grp_allowed_field(i32* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %116

69:                                               ; preds = %65
  %70 = load %struct.group*, %struct.group** %6, align 8
  %71 = getelementptr inbounds %struct.group, %struct.group* %70, i32 0, i32 2
  %72 = load i8**, i8*** %71, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 0
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %116

76:                                               ; preds = %69
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %109, %76
  %78 = load %struct.group*, %struct.group** %6, align 8
  %79 = getelementptr inbounds %struct.group, %struct.group* %78, i32 0, i32 2
  %80 = load i8**, i8*** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %112

86:                                               ; preds = %77
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @snprintf(i8* %87, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %93, 64
  br label %95

95:                                               ; preds = %92, %86
  %96 = phi i1 [ false, %86 ], [ %94, %92 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load i32*, i32** %7, align 8
  %100 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %101 = load %struct.group*, %struct.group** %6, align 8
  %102 = getelementptr inbounds %struct.group, %struct.group* %101, i32 0, i32 2
  %103 = load i8**, i8*** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @nvlist_add_string(i32* %99, i8* %100, i8* %107)
  br label %109

109:                                              ; preds = %95
  %110 = load i32, i32* %10, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %77

112:                                              ; preds = %77
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @nvlist_add_number(i32* %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %112, %69, %65
  store i32 1, i32* %4, align 4
  br label %117

117:                                              ; preds = %116, %24, %13
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @grp_allowed_group(i32*, i8*, i64) #1

declare dso_local i64 @grp_allowed_field(i32*, i8*) #1

declare dso_local i32 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @nvlist_add_number(i32*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
