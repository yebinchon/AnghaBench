; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_verify_krb5_conf.c_check_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_verify_krb5_conf.c_check_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__, i32, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__*, i32 }
%struct.entry = type { i8*, i64, i64, %struct.entry* }

@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%s: unknown or wrong type\00", align 1
@krb5_config_string = common dso_local global i64 0, align 8
@krb5_config_list = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"%s: is a deprecated entry\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"%s: unknown entry\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.TYPE_5__*, %struct.entry*)* @check_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_section(i32 %0, i8* %1, %struct.TYPE_5__* %2, %struct.entry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.entry*, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store %struct.entry* %3, %struct.entry** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %10, align 8
  br label %14

14:                                               ; preds = %147, %4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %151

17:                                               ; preds = %14
  store i8* null, i8** %12, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @asprintf(i8** %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i8*, i8** %12, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %17
  %28 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %24
  %30 = load %struct.entry*, %struct.entry** %8, align 8
  store %struct.entry* %30, %struct.entry** %11, align 8
  br label %31

31:                                               ; preds = %130, %29
  %32 = load %struct.entry*, %struct.entry** %11, align 8
  %33 = getelementptr inbounds %struct.entry, %struct.entry* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %133

36:                                               ; preds = %31
  %37 = load %struct.entry*, %struct.entry** %11, align 8
  %38 = getelementptr inbounds %struct.entry, %struct.entry* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %36
  %44 = load %struct.entry*, %struct.entry** %11, align 8
  %45 = getelementptr inbounds %struct.entry, %struct.entry* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @strcmp(i8* %46, i32 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %129

52:                                               ; preds = %43, %36
  %53 = load %struct.entry*, %struct.entry** %11, align 8
  %54 = getelementptr inbounds %struct.entry, %struct.entry* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load i32, i32* %5, align 4
  %62 = load i8*, i8** %12, align 8
  %63 = call i32 @krb5_warnx(i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %117

66:                                               ; preds = %52
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @krb5_config_string, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %66
  %73 = load %struct.entry*, %struct.entry** %11, align 8
  %74 = getelementptr inbounds %struct.entry, %struct.entry* %73, i32 0, i32 3
  %75 = load %struct.entry*, %struct.entry** %74, align 8
  %76 = icmp ne %struct.entry* %75, null
  br i1 %76, label %77, label %91

77:                                               ; preds = %72
  %78 = load %struct.entry*, %struct.entry** %11, align 8
  %79 = getelementptr inbounds %struct.entry, %struct.entry* %78, i32 0, i32 3
  %80 = load %struct.entry*, %struct.entry** %79, align 8
  %81 = bitcast %struct.entry* %80 to i32 (i32, i8*, i32)*
  %82 = load i32, i32* %5, align 4
  %83 = load i8*, i8** %12, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 %81(i32 %82, i8* %83, i32 %87)
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %9, align 4
  br label %116

91:                                               ; preds = %72, %66
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @krb5_config_list, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %91
  %98 = load %struct.entry*, %struct.entry** %11, align 8
  %99 = getelementptr inbounds %struct.entry, %struct.entry* %98, i32 0, i32 3
  %100 = load %struct.entry*, %struct.entry** %99, align 8
  %101 = icmp ne %struct.entry* %100, null
  br i1 %101, label %102, label %115

102:                                              ; preds = %97
  %103 = load i32, i32* %5, align 4
  %104 = load i8*, i8** %12, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = load %struct.entry*, %struct.entry** %11, align 8
  %110 = getelementptr inbounds %struct.entry, %struct.entry* %109, i32 0, i32 3
  %111 = load %struct.entry*, %struct.entry** %110, align 8
  %112 = call i32 @check_section(i32 %103, i8* %104, %struct.TYPE_5__* %108, %struct.entry* %111)
  %113 = load i32, i32* %9, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %102, %97, %91
  br label %116

116:                                              ; preds = %115, %77
  br label %117

117:                                              ; preds = %116, %60
  %118 = load %struct.entry*, %struct.entry** %11, align 8
  %119 = getelementptr inbounds %struct.entry, %struct.entry* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load i32, i32* %5, align 4
  %124 = load i8*, i8** %12, align 8
  %125 = call i32 @krb5_warnx(i32 %123, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %124)
  %126 = load i32, i32* %9, align 4
  %127 = or i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %122, %117
  br label %133

129:                                              ; preds = %43
  br label %130

130:                                              ; preds = %129
  %131 = load %struct.entry*, %struct.entry** %11, align 8
  %132 = getelementptr inbounds %struct.entry, %struct.entry* %131, i32 1
  store %struct.entry* %132, %struct.entry** %11, align 8
  br label %31

133:                                              ; preds = %128, %31
  %134 = load %struct.entry*, %struct.entry** %11, align 8
  %135 = getelementptr inbounds %struct.entry, %struct.entry* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = icmp eq i8* %136, null
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load i32, i32* %5, align 4
  %140 = load i8*, i8** %12, align 8
  %141 = call i32 @krb5_warnx(i32 %139, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %140)
  %142 = load i32, i32* %9, align 4
  %143 = or i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %144

144:                                              ; preds = %138, %133
  %145 = load i8*, i8** %12, align 8
  %146 = call i32 @free(i8* %145)
  br label %147

147:                                              ; preds = %144
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 3
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  store %struct.TYPE_5__* %150, %struct.TYPE_5__** %10, align 8
  br label %14

151:                                              ; preds = %14
  %152 = load i32, i32* %9, align 4
  ret i32 %152
}

declare dso_local i64 @asprintf(i8**, i8*, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @krb5_warnx(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
