; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/extr_cap_dns.c_hostent_pack.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/extr_cap_dns.c_hostent_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i64, i32**, i32**, i64, i32* }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"addrtype\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"naliases\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"alias%u\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"naddrs\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"addr%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostent*, i32*)* @hostent_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostent_pack(%struct.hostent* %0, i32* %1) #0 {
  %3 = alloca %struct.hostent*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [64 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.hostent* %0, %struct.hostent** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load %struct.hostent*, %struct.hostent** %3, align 8
  %10 = getelementptr inbounds %struct.hostent, %struct.hostent* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @nvlist_add_string(i32* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %11)
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.hostent*, %struct.hostent** %3, align 8
  %15 = getelementptr inbounds %struct.hostent, %struct.hostent* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @nvlist_add_number(i32* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.hostent*, %struct.hostent** %3, align 8
  %21 = getelementptr inbounds %struct.hostent, %struct.hostent* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @nvlist_add_number(i32* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load %struct.hostent*, %struct.hostent** %3, align 8
  %26 = getelementptr inbounds %struct.hostent, %struct.hostent* %25, i32 0, i32 2
  %27 = load i32**, i32*** %26, align 8
  %28 = icmp eq i32** %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @nvlist_add_number(i32* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 0)
  br label %72

32:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %65, %32
  %34 = load %struct.hostent*, %struct.hostent** %3, align 8
  %35 = getelementptr inbounds %struct.hostent, %struct.hostent* %34, i32 0, i32 2
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %68

42:                                               ; preds = %33
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @snprintf(i8* %43, i32 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 64
  br label %51

51:                                               ; preds = %48, %42
  %52 = phi i1 [ false, %42 ], [ %50, %48 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %57 = load %struct.hostent*, %struct.hostent** %3, align 8
  %58 = getelementptr inbounds %struct.hostent, %struct.hostent* %57, i32 0, i32 2
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @nvlist_add_string(i32* %55, i8* %56, i32* %63)
  br label %65

65:                                               ; preds = %51
  %66 = load i32, i32* %5, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %33

68:                                               ; preds = %33
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @nvlist_add_number(i32* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %68, %29
  %73 = load %struct.hostent*, %struct.hostent** %3, align 8
  %74 = getelementptr inbounds %struct.hostent, %struct.hostent* %73, i32 0, i32 1
  %75 = load i32**, i32*** %74, align 8
  %76 = icmp eq i32** %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @nvlist_add_number(i32* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 0)
  br label %123

80:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %116, %80
  %82 = load %struct.hostent*, %struct.hostent** %3, align 8
  %83 = getelementptr inbounds %struct.hostent, %struct.hostent* %82, i32 0, i32 1
  %84 = load i32**, i32*** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %119

90:                                               ; preds = %81
  %91 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @snprintf(i8* %91, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %97, 64
  br label %99

99:                                               ; preds = %96, %90
  %100 = phi i1 [ false, %90 ], [ %98, %96 ]
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load i32*, i32** %4, align 8
  %104 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %105 = load %struct.hostent*, %struct.hostent** %3, align 8
  %106 = getelementptr inbounds %struct.hostent, %struct.hostent* %105, i32 0, i32 1
  %107 = load i32**, i32*** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32*, i32** %107, i64 %109
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.hostent*, %struct.hostent** %3, align 8
  %113 = getelementptr inbounds %struct.hostent, %struct.hostent* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @nvlist_add_binary(i32* %103, i8* %104, i32* %111, i64 %114)
  br label %116

116:                                              ; preds = %99
  %117 = load i32, i32* %5, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %5, align 4
  br label %81

119:                                              ; preds = %81
  %120 = load i32*, i32** %4, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @nvlist_add_number(i32* %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %119, %77
  ret void
}

declare dso_local i32 @nvlist_add_string(i32*, i8*, i32*) #1

declare dso_local i32 @nvlist_add_number(i32*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nvlist_add_binary(i32*, i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
