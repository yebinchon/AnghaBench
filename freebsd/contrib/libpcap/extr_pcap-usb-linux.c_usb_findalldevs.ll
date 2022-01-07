; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-usb-linux.c_usb_findalldevs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-usb-linux.c_usb_findalldevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@LINUX_USB_MON_DEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@SYS_USB_BUS_DIR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@PROC_USB_BUS_DIR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_findalldevs(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dirent*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %17 = load i32, i32* @PATH_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  store i32 0, i32* %11, align 4
  %21 = call i64 (...) @have_binary_usbmon()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %76

23:                                               ; preds = %2
  %24 = load i32, i32* @LINUX_USB_MON_DEV, align 4
  %25 = trunc i64 %18 to i32
  %26 = call i32 @strlcpy(i8* %20, i32 %24, i32 %25)
  %27 = call i8* @strrchr(i8* %20, i8 signext 47)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %173

31:                                               ; preds = %23
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %8, align 8
  store i8 0, i8* %32, align 1
  %34 = load i8*, i8** %8, align 8
  %35 = call i64 @strlen(i8* %34)
  store i64 %35, i64* %9, align 8
  %36 = call i32* @opendir(i8* %20)
  store i32* %36, i32** %12, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %75

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %67, %66, %59, %39
  %41 = load i32, i32* %11, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32*, i32** %12, align 8
  %45 = call %struct.dirent* @readdir(i32* %44)
  store %struct.dirent* %45, %struct.dirent** %10, align 8
  %46 = icmp ne %struct.dirent* %45, null
  br label %47

47:                                               ; preds = %43, %40
  %48 = phi i1 [ false, %40 ], [ %46, %43 ]
  br i1 %48, label %49, label %72

49:                                               ; preds = %47
  %50 = load %struct.dirent*, %struct.dirent** %10, align 8
  %51 = getelementptr inbounds %struct.dirent, %struct.dirent* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %14, align 8
  %53 = load i8*, i8** %14, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i64 @strncmp(i8* %53, i8* %54, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %40

60:                                               ; preds = %49
  %61 = load i8*, i8** %14, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = call i32 @sscanf(i8* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %13)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %40

67:                                               ; preds = %60
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %13, align 4
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @usb_dev_add(i32* %68, i32 %69, i8* %70)
  store i32 %71, i32* %11, align 4
  br label %40

72:                                               ; preds = %47
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @closedir(i32* %73)
  br label %75

75:                                               ; preds = %72, %31
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %173

76:                                               ; preds = %2
  %77 = load i8*, i8** @SYS_USB_BUS_DIR, align 8
  %78 = call i32* @opendir(i8* %77)
  store i32* %78, i32** %12, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %113

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %105, %104, %98, %81
  %83 = load i32, i32* %11, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32*, i32** %12, align 8
  %87 = call %struct.dirent* @readdir(i32* %86)
  store %struct.dirent* %87, %struct.dirent** %10, align 8
  %88 = icmp ne %struct.dirent* %87, null
  br label %89

89:                                               ; preds = %85, %82
  %90 = phi i1 [ false, %82 ], [ %88, %85 ]
  br i1 %90, label %91, label %110

91:                                               ; preds = %89
  %92 = load %struct.dirent*, %struct.dirent** %10, align 8
  %93 = getelementptr inbounds %struct.dirent, %struct.dirent* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %14, align 8
  %95 = load i8*, i8** %14, align 8
  %96 = call i64 @strncmp(i8* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %82

99:                                               ; preds = %91
  %100 = load i8*, i8** %14, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 3
  %102 = call i32 @sscanf(i8* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %13)
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %82

105:                                              ; preds = %99
  %106 = load i32*, i32** %4, align 8
  %107 = load i32, i32* %13, align 4
  %108 = load i8*, i8** %5, align 8
  %109 = call i32 @usb_dev_add(i32* %106, i32 %107, i8* %108)
  store i32 %109, i32* %11, align 4
  br label %82

110:                                              ; preds = %89
  %111 = load i32*, i32** %12, align 8
  %112 = call i32 @closedir(i32* %111)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %173

113:                                              ; preds = %76
  %114 = load i8*, i8** @PROC_USB_BUS_DIR, align 8
  %115 = call i32* @opendir(i8* %114)
  store i32* %115, i32** %12, align 8
  %116 = load i32*, i32** %12, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %172

118:                                              ; preds = %113
  br label %119

119:                                              ; preds = %163, %162, %144, %118
  %120 = load i32, i32* %11, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i32*, i32** %12, align 8
  %124 = call %struct.dirent* @readdir(i32* %123)
  store %struct.dirent* %124, %struct.dirent** %10, align 8
  %125 = icmp ne %struct.dirent* %124, null
  br label %126

126:                                              ; preds = %122, %119
  %127 = phi i1 [ false, %119 ], [ %125, %122 ]
  br i1 %127, label %128, label %168

128:                                              ; preds = %126
  %129 = load %struct.dirent*, %struct.dirent** %10, align 8
  %130 = getelementptr inbounds %struct.dirent, %struct.dirent* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  store i8* %131, i8** %14, align 8
  %132 = load i8*, i8** %14, align 8
  %133 = call i64 @strlen(i8* %132)
  store i64 %133, i64* %15, align 8
  %134 = load i64, i64* %15, align 8
  %135 = icmp ult i64 %134, 1
  br i1 %135, label %144, label %136

136:                                              ; preds = %128
  %137 = load i8*, i8** %14, align 8
  %138 = load i64, i64* %15, align 8
  %139 = add i64 %138, -1
  store i64 %139, i64* %15, align 8
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = call i64 @isdigit(i8 signext %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %136, %128
  br label %119

145:                                              ; preds = %136
  br label %146

146:                                              ; preds = %154, %145
  %147 = load i8*, i8** %14, align 8
  %148 = load i64, i64* %15, align 8
  %149 = add i64 %148, -1
  store i64 %149, i64* %15, align 8
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = call i64 @isdigit(i8 signext %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %146
  br label %146

155:                                              ; preds = %146
  %156 = load i8*, i8** %14, align 8
  %157 = load i64, i64* %15, align 8
  %158 = add i64 %157, 1
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = call i32 @sscanf(i8* %159, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %13)
  %161 = icmp ne i32 %160, 1
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  br label %119

163:                                              ; preds = %155
  %164 = load i32*, i32** %4, align 8
  %165 = load i32, i32* %13, align 4
  %166 = load i8*, i8** %5, align 8
  %167 = call i32 @usb_dev_add(i32* %164, i32 %165, i8* %166)
  store i32 %167, i32* %11, align 4
  br label %119

168:                                              ; preds = %126
  %169 = load i32*, i32** %12, align 8
  %170 = call i32 @closedir(i32* %169)
  %171 = load i32, i32* %11, align 4
  store i32 %171, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %173

172:                                              ; preds = %113
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %173

173:                                              ; preds = %172, %168, %110, %75, %30
  %174 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %174)
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @have_binary_usbmon(...) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*) #2

declare dso_local i32 @usb_dev_add(i32*, i32, i8*) #2

declare dso_local i32 @closedir(i32*) #2

declare dso_local i64 @isdigit(i8 signext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
