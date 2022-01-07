; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_sysctl/extr_cap_sysctl.c_sysctl_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_sysctl/extr_cap_sysctl.c_sysctl_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"sysctlnametomib\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"sysctlbyname\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"sysctl\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOTCAPABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@CAP_SYSCTL_WRITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"newp\00", align 1
@CAP_SYSCTL_READ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"justsize\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"oldlen\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"mib\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"oldp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32*)* @sysctl_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysctl_command(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @nametomib(i32* %24, i32* %25, i32* %26)
  store i32 %27, i32* %5, align 4
  br label %166

28:                                               ; preds = %4
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %5, align 4
  br label %166

38:                                               ; preds = %32, %28
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @sysctl_valid(i32* %39, i32 0)
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %19, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %19, align 4
  store i32 %44, i32* %5, align 4
  br label %166

45:                                               ; preds = %38
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @sysctl_allowed(i32* %46, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @ENOTCAPABLE, align 4
  store i32 %51, i32* %5, align 4
  br label %166

52:                                               ; preds = %45
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @nvlist_get_number(i32* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @CAP_SYSCTL_WRITE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %52
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @nvlist_exists_binary(i32* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %5, align 4
  br label %166

65:                                               ; preds = %59
  %66 = load i32*, i32** %8, align 8
  %67 = call i8* @nvlist_get_binary(i32* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64* %16)
  store i8* %67, i8** %11, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i64, i64* %16, align 8
  %72 = icmp ugt i64 %71, 0
  br label %73

73:                                               ; preds = %70, %65
  %74 = phi i1 [ false, %65 ], [ %72, %70 ]
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  br label %78

77:                                               ; preds = %52
  store i8* null, i8** %11, align 8
  store i64 0, i64* %16, align 8
  br label %78

78:                                               ; preds = %77, %73
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @CAP_SYSCTL_READ, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %111

83:                                               ; preds = %78
  %84 = load i32*, i32** %8, align 8
  %85 = call i64 @nvlist_exists_null(i32* %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i8* null, i8** %13, align 8
  store i64 0, i64* %15, align 8
  store i64* %15, i64** %18, align 8
  br label %110

88:                                               ; preds = %83
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @nvlist_exists_number(i32* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* @EINVAL, align 4
  store i32 %93, i32* %5, align 4
  br label %166

94:                                               ; preds = %88
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @nvlist_get_number(i32* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %15, align 8
  %98 = load i64, i64* %15, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32, i32* @EINVAL, align 4
  store i32 %101, i32* %5, align 4
  br label %166

102:                                              ; preds = %94
  %103 = load i64, i64* %15, align 8
  %104 = call i8* @calloc(i32 1, i64 %103)
  store i8* %104, i8** %13, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = icmp eq i8* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* @ENOMEM, align 4
  store i32 %108, i32* %5, align 4
  br label %166

109:                                              ; preds = %102
  store i64* %15, i64** %18, align 8
  br label %110

110:                                              ; preds = %109, %87
  br label %112

111:                                              ; preds = %78
  store i8* null, i8** %13, align 8
  store i64 0, i64* %15, align 8
  store i64* null, i64** %18, align 8
  br label %112

112:                                              ; preds = %111, %110
  %113 = load i8*, i8** %6, align 8
  %114 = call i64 @strcmp(i8* %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = load i32*, i32** %8, align 8
  %118 = call i8* @nvlist_get_string(i32* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store i8* %118, i8** %10, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = load i8*, i8** %13, align 8
  %121 = load i64*, i64** %18, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = load i64, i64* %16, align 8
  %124 = call i32 @sysctlbyname(i8* %119, i8* %120, i64* %121, i8* %122, i64 %123)
  store i32 %124, i32* %19, align 4
  br label %137

125:                                              ; preds = %112
  %126 = load i32*, i32** %8, align 8
  %127 = call i8* @nvlist_get_binary(i32* %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64* %17)
  %128 = bitcast i8* %127 to i32*
  store i32* %128, i32** %12, align 8
  %129 = load i32*, i32** %12, align 8
  %130 = load i64, i64* %17, align 8
  %131 = udiv i64 %130, 4
  %132 = load i8*, i8** %13, align 8
  %133 = load i64*, i64** %18, align 8
  %134 = load i8*, i8** %11, align 8
  %135 = load i64, i64* %16, align 8
  %136 = call i32 @sysctl(i32* %129, i64 %131, i8* %132, i64* %133, i8* %134, i64 %135)
  store i32 %136, i32* %19, align 4
  br label %137

137:                                              ; preds = %125, %116
  %138 = load i32, i32* %19, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load i32, i32* @errno, align 4
  store i32 %141, i32* %19, align 4
  %142 = load i8*, i8** %13, align 8
  %143 = call i32 @free(i8* %142)
  %144 = load i32, i32* %19, align 4
  store i32 %144, i32* %5, align 4
  br label %166

145:                                              ; preds = %137
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* @CAP_SYSCTL_READ, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %165

150:                                              ; preds = %145
  %151 = load i32*, i32** %8, align 8
  %152 = call i64 @nvlist_exists_null(i32* %151, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = load i32*, i32** %9, align 8
  %156 = load i64, i64* %15, align 8
  %157 = trunc i64 %156 to i32
  %158 = call i32 @nvlist_add_number(i32* %155, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %157)
  br label %164

159:                                              ; preds = %150
  %160 = load i32*, i32** %9, align 8
  %161 = load i8*, i8** %13, align 8
  %162 = load i64, i64* %15, align 8
  %163 = call i32 @nvlist_move_binary(i32* %160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %161, i64 %162)
  br label %164

164:                                              ; preds = %159, %154
  br label %165

165:                                              ; preds = %164, %145
  store i32 0, i32* %5, align 4
  br label %166

166:                                              ; preds = %165, %140, %107, %100, %92, %63, %50, %43, %36, %23
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @nametomib(i32*, i32*, i32*) #1

declare dso_local i32 @sysctl_valid(i32*, i32) #1

declare dso_local i32 @sysctl_allowed(i32*, i32*) #1

declare dso_local i32 @nvlist_get_number(i32*, i8*) #1

declare dso_local i32 @nvlist_exists_binary(i32*, i8*) #1

declare dso_local i8* @nvlist_get_binary(i32*, i8*, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @nvlist_exists_null(i32*, i8*) #1

declare dso_local i32 @nvlist_exists_number(i32*, i8*) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i8* @nvlist_get_string(i32*, i8*) #1

declare dso_local i32 @sysctlbyname(i8*, i8*, i64*, i8*, i64) #1

declare dso_local i32 @sysctl(i32*, i64, i8*, i64*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @nvlist_add_number(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_move_binary(i32*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
