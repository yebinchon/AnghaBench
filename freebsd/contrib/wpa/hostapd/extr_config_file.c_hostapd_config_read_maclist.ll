; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_config_file.c_hostapd_config_read_maclist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_config_file.c_hostapd_config_read_maclist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_acl_entry = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"MAC list file '%s' not found.\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Invalid MAC address '%s' at line %d in '%s'\00", align 1
@hostapd_acl_comp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.mac_acl_entry**, i32*)* @hostapd_config_read_maclist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_config_read_maclist(i8* %0, %struct.mac_acl_entry** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mac_acl_entry**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [128 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.mac_acl_entry** %1, %struct.mac_acl_entry*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32* @fopen(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @MSG_ERROR, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %164

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %149, %90, %65, %42, %29
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %32 = load i32*, i32** %8, align 8
  %33 = call i64 @fgets(i8* %31, i32 128, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %150

35:                                               ; preds = %30
  store i32 0, i32* %16, align 4
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %39 = load i8, i8* %38, align 16
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 35
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %30

43:                                               ; preds = %35
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  store i8* %44, i8** %10, align 8
  br label %45

45:                                               ; preds = %57, %43
  %46 = load i8*, i8** %10, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load i8*, i8** %10, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 10
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i8*, i8** %10, align 8
  store i8 0, i8* %56, align 1
  br label %60

57:                                               ; preds = %50
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %10, align 8
  br label %45

60:                                               ; preds = %55, %45
  %61 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %62 = load i8, i8* %61, align 16
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %30

66:                                               ; preds = %60
  %67 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  store i8* %67, i8** %10, align 8
  %68 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %69 = load i8, i8* %68, align 16
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 45
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  store i32 1, i32* %16, align 4
  %73 = load i8*, i8** %10, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %10, align 8
  br label %75

75:                                               ; preds = %72, %66
  %76 = load i8*, i8** %10, align 8
  %77 = call i64 @hwaddr_aton(i8* %76, i32* %20)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load i32, i32* @MSG_ERROR, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %80, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %81, i32 %82, i8* %83)
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @fclose(i32* %85)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %164

87:                                               ; preds = %75
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load %struct.mac_acl_entry**, %struct.mac_acl_entry*** %6, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @hostapd_remove_acl_mac(%struct.mac_acl_entry** %91, i32* %92, i32* %20)
  br label %30

94:                                               ; preds = %87
  store i32 0, i32* %14, align 4
  %95 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  store i8* %95, i8** %10, align 8
  br label %96

96:                                               ; preds = %113, %94
  %97 = load i8*, i8** %10, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %96
  %102 = load i8*, i8** %10, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 32
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load i8*, i8** %10, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 9
  br label %111

111:                                              ; preds = %106, %101, %96
  %112 = phi i1 [ false, %101 ], [ false, %96 ], [ %110, %106 ]
  br i1 %112, label %113, label %116

113:                                              ; preds = %111
  %114 = load i8*, i8** %10, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %10, align 8
  br label %96

116:                                              ; preds = %111
  br label %117

117:                                              ; preds = %129, %116
  %118 = load i8*, i8** %10, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 32
  br i1 %121, label %127, label %122

122:                                              ; preds = %117
  %123 = load i8*, i8** %10, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 9
  br label %127

127:                                              ; preds = %122, %117
  %128 = phi i1 [ true, %117 ], [ %126, %122 ]
  br i1 %128, label %129, label %132

129:                                              ; preds = %127
  %130 = load i8*, i8** %10, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %10, align 8
  br label %117

132:                                              ; preds = %127
  %133 = load i8*, i8** %10, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i8*, i8** %10, align 8
  %139 = call i32 @atoi(i8* %138)
  store i32 %139, i32* %14, align 4
  br label %140

140:                                              ; preds = %137, %132
  %141 = load %struct.mac_acl_entry**, %struct.mac_acl_entry*** %6, align 8
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* %14, align 4
  %144 = call i64 @hostapd_add_acl_maclist(%struct.mac_acl_entry** %141, i32* %142, i32 %143, i32* %20)
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load i32*, i32** %8, align 8
  %148 = call i32 @fclose(i32* %147)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %164

149:                                              ; preds = %140
  br label %30

150:                                              ; preds = %30
  %151 = load i32*, i32** %8, align 8
  %152 = call i32 @fclose(i32* %151)
  %153 = load %struct.mac_acl_entry**, %struct.mac_acl_entry*** %6, align 8
  %154 = load %struct.mac_acl_entry*, %struct.mac_acl_entry** %153, align 8
  %155 = icmp ne %struct.mac_acl_entry* %154, null
  br i1 %155, label %156, label %163

156:                                              ; preds = %150
  %157 = load %struct.mac_acl_entry**, %struct.mac_acl_entry*** %6, align 8
  %158 = load %struct.mac_acl_entry*, %struct.mac_acl_entry** %157, align 8
  %159 = load i32*, i32** %7, align 8
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @hostapd_acl_comp, align 4
  %162 = call i32 @qsort(%struct.mac_acl_entry* %158, i32 %160, i32 4, i32 %161)
  br label %163

163:                                              ; preds = %156, %150
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %164

164:                                              ; preds = %163, %146, %79, %25
  %165 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %165)
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @wpa_printf(i32, i8*, i8*, ...) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i64 @hwaddr_aton(i8*, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @hostapd_remove_acl_mac(%struct.mac_acl_entry**, i32*, i32*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i64 @hostapd_add_acl_maclist(%struct.mac_acl_entry**, i32*, i32, i32*) #2

declare dso_local i32 @qsort(%struct.mac_acl_entry*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
