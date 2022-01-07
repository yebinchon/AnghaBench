; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/extr_cap_dns.c_hostent_unpack.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/extr_cap_dns.c_hostent_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32, i32, i32**, i32**, i32* }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"addrtype\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"naliases\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"alias%u\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"naddrs\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"addr%u\00", align 1
@NO_RECOVERY = common dso_local global i32 0, align 4
@h_errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hostent* (i32*, %struct.hostent*)* @hostent_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hostent* @hostent_unpack(i32* %0, %struct.hostent* %1) #0 {
  %3 = alloca %struct.hostent*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hostent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.hostent* %1, %struct.hostent** %5, align 8
  %10 = load %struct.hostent*, %struct.hostent** %5, align 8
  %11 = call i32 @hostent_free(%struct.hostent* %10)
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @nvlist_get_string(i32* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %14 = call i8* @strdup(i32 %13)
  %15 = bitcast i8* %14 to i32*
  %16 = load %struct.hostent*, %struct.hostent** %5, align 8
  %17 = getelementptr inbounds %struct.hostent, %struct.hostent* %16, i32 0, i32 4
  store i32* %15, i32** %17, align 8
  %18 = load %struct.hostent*, %struct.hostent** %5, align 8
  %19 = getelementptr inbounds %struct.hostent, %struct.hostent* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %174

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @nvlist_get_number(i32* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %26 = trunc i64 %25 to i32
  %27 = load %struct.hostent*, %struct.hostent** %5, align 8
  %28 = getelementptr inbounds %struct.hostent, %struct.hostent* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 @nvlist_get_number(i32* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %31 = trunc i64 %30 to i32
  %32 = load %struct.hostent*, %struct.hostent** %5, align 8
  %33 = getelementptr inbounds %struct.hostent, %struct.hostent* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = call i64 @nvlist_get_number(i32* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add i32 %37, 1
  %39 = call i8* @calloc(i32 8, i32 %38)
  %40 = bitcast i8* %39 to i32**
  %41 = load %struct.hostent*, %struct.hostent** %5, align 8
  %42 = getelementptr inbounds %struct.hostent, %struct.hostent* %41, i32 0, i32 3
  store i32** %40, i32*** %42, align 8
  %43 = load %struct.hostent*, %struct.hostent** %5, align 8
  %44 = getelementptr inbounds %struct.hostent, %struct.hostent* %43, i32 0, i32 3
  %45 = load i32**, i32*** %44, align 8
  %46 = icmp eq i32** %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %23
  br label %174

48:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %87, %48
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %90

53:                                               ; preds = %49
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @snprintf(i8* %54, i32 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 64
  br label %62

62:                                               ; preds = %59, %53
  %63 = phi i1 [ false, %53 ], [ %61, %59 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32*, i32** %4, align 8
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %68 = call i32 @nvlist_get_string(i32* %66, i8* %67)
  %69 = call i8* @strdup(i32 %68)
  %70 = bitcast i8* %69 to i32*
  %71 = load %struct.hostent*, %struct.hostent** %5, align 8
  %72 = getelementptr inbounds %struct.hostent, %struct.hostent* %71, i32 0, i32 3
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  store i32* %70, i32** %76, align 8
  %77 = load %struct.hostent*, %struct.hostent** %5, align 8
  %78 = getelementptr inbounds %struct.hostent, %struct.hostent* %77, i32 0, i32 3
  %79 = load i32**, i32*** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %79, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %62
  br label %174

86:                                               ; preds = %62
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %6, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %49

90:                                               ; preds = %49
  %91 = load %struct.hostent*, %struct.hostent** %5, align 8
  %92 = getelementptr inbounds %struct.hostent, %struct.hostent* %91, i32 0, i32 3
  %93 = load i32**, i32*** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  store i32* null, i32** %96, align 8
  %97 = load i32*, i32** %4, align 8
  %98 = call i64 @nvlist_get_number(i32* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = add i32 %100, 1
  %102 = call i8* @calloc(i32 8, i32 %101)
  %103 = bitcast i8* %102 to i32**
  %104 = load %struct.hostent*, %struct.hostent** %5, align 8
  %105 = getelementptr inbounds %struct.hostent, %struct.hostent* %104, i32 0, i32 2
  store i32** %103, i32*** %105, align 8
  %106 = load %struct.hostent*, %struct.hostent** %5, align 8
  %107 = getelementptr inbounds %struct.hostent, %struct.hostent* %106, i32 0, i32 2
  %108 = load i32**, i32*** %107, align 8
  %109 = icmp eq i32** %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %90
  br label %174

111:                                              ; preds = %90
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %163, %111
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp ult i32 %113, %114
  br i1 %115, label %116, label %166

116:                                              ; preds = %112
  %117 = load %struct.hostent*, %struct.hostent** %5, align 8
  %118 = getelementptr inbounds %struct.hostent, %struct.hostent* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32* @malloc(i32 %119)
  %121 = load %struct.hostent*, %struct.hostent** %5, align 8
  %122 = getelementptr inbounds %struct.hostent, %struct.hostent* %121, i32 0, i32 2
  %123 = load i32**, i32*** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i32*, i32** %123, i64 %125
  store i32* %120, i32** %126, align 8
  %127 = load %struct.hostent*, %struct.hostent** %5, align 8
  %128 = getelementptr inbounds %struct.hostent, %struct.hostent* %127, i32 0, i32 2
  %129 = load i32**, i32*** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  %133 = load i32*, i32** %132, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %116
  br label %174

136:                                              ; preds = %116
  %137 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @snprintf(i8* %137, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %138)
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load i32, i32* %9, align 4
  %144 = icmp slt i32 %143, 64
  br label %145

145:                                              ; preds = %142, %136
  %146 = phi i1 [ false, %136 ], [ %144, %142 ]
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert(i32 %147)
  %149 = load i32*, i32** %4, align 8
  %150 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %151 = call i32 @nvlist_get_binary(i32* %149, i8* %150, i32* null)
  %152 = load %struct.hostent*, %struct.hostent** %5, align 8
  %153 = getelementptr inbounds %struct.hostent, %struct.hostent* %152, i32 0, i32 2
  %154 = load i32**, i32*** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i32*, i32** %154, i64 %156
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.hostent*, %struct.hostent** %5, align 8
  %160 = getelementptr inbounds %struct.hostent, %struct.hostent* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @bcopy(i32 %151, i32* %158, i32 %161)
  br label %163

163:                                              ; preds = %145
  %164 = load i32, i32* %6, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %6, align 4
  br label %112

166:                                              ; preds = %112
  %167 = load %struct.hostent*, %struct.hostent** %5, align 8
  %168 = getelementptr inbounds %struct.hostent, %struct.hostent* %167, i32 0, i32 2
  %169 = load i32**, i32*** %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i32*, i32** %169, i64 %171
  store i32* null, i32** %172, align 8
  %173 = load %struct.hostent*, %struct.hostent** %5, align 8
  store %struct.hostent* %173, %struct.hostent** %3, align 8
  br label %178

174:                                              ; preds = %135, %110, %85, %47, %22
  %175 = load %struct.hostent*, %struct.hostent** %5, align 8
  %176 = call i32 @hostent_free(%struct.hostent* %175)
  %177 = load i32, i32* @NO_RECOVERY, align 4
  store i32 %177, i32* @h_errno, align 4
  store %struct.hostent* null, %struct.hostent** %3, align 8
  br label %178

178:                                              ; preds = %174, %166
  %179 = load %struct.hostent*, %struct.hostent** %3, align 8
  ret %struct.hostent* %179
}

declare dso_local i32 @hostent_free(%struct.hostent*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @nvlist_get_string(i32*, i8*) #1

declare dso_local i64 @nvlist_get_number(i32*, i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @nvlist_get_binary(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
