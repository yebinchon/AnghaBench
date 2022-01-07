; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-sita.c_acn_parse_hosts_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-sita.c_acn_parse_hosts_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 }

@MAX_LINE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"/etc/hosts\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Cannot open '/etc/hosts' for reading.\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"#\0A\0D\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"_I_\00", align 1
@MAX_CHASSIS = common dso_local global i32 0, align 4
@MAX_GEOSLOT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Invalid ACN name in '/etc/hosts'.\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@units = common dso_local global %struct.TYPE_3__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acn_parse_hosts_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %14 = load i32, i32* @MAX_LINE_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %18 = call i32 (...) @empty_unit_table()
  %19 = call i32* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %19, i32** %4, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %24 = call i32 @pcap_snprintf(i8* %22, i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %131

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %102, %97, %86, %56, %49, %41, %25
  %27 = load i32, i32* @MAX_LINE_SIZE, align 4
  %28 = sub nsw i32 %27, 1
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 @fgets(i8* %17, i32 %28, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %123

32:                                               ; preds = %26
  %33 = call i32 @strcspn(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %17, i64 %35
  store i8 0, i8* %36, align 1
  %37 = call i32 @strspn(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @strlen(i8* %17)
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %26

42:                                               ; preds = %32
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %17, i64 %44
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i8* @strstr(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i8* %47, i8** %8, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %26

50:                                               ; preds = %42
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 4
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 95
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %26

57:                                               ; preds = %50
  %58 = load i8*, i8** %7, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @strcspn(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  store i8 0, i8* %62, align 1
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = sub nsw i32 %66, 48
  store i32 %67, i32* %10, align 4
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 5
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = sub nsw i32 %71, 48
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 1
  br i1 %74, label %86, label %75

75:                                               ; preds = %57
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @MAX_CHASSIS, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %86, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %80, 1
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @MAX_GEOSLOT, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82, %79, %75, %57
  %87 = load i8*, i8** %3, align 8
  %88 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %89 = call i32 @pcap_snprintf(i8* %87, i32 %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %26

90:                                               ; preds = %82
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 @strlen(i8* %91)
  %93 = add nsw i32 %92, 1
  %94 = call i64 @malloc(i32 %93)
  %95 = inttoptr i64 %94 to i8*
  store i8* %95, i8** %8, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load i8*, i8** %3, align 8
  %99 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %100 = load i32, i32* @errno, align 4
  %101 = call i32 @pcap_fmt_errmsg_for_errno(i8* %98, i32 %99, i32 %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %26

102:                                              ; preds = %90
  %103 = load i8*, i8** %8, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = call i32 @strcpy(i8* %103, i8* %104)
  %106 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @units, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %106, i64 %108
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %112
  store %struct.TYPE_3__* %113, %struct.TYPE_3__** %12, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 4
  br label %26

123:                                              ; preds = %26
  %124 = load i32*, i32** %4, align 8
  %125 = call i32 @fclose(i32* %124)
  %126 = load i8*, i8** %3, align 8
  %127 = load i8, i8* %126, align 1
  %128 = icmp ne i8 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %131

130:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %131

131:                                              ; preds = %130, %129, %21
  %132 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %132)
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @empty_unit_table(...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i32 @strcspn(i8*, i8*) #2

declare dso_local i32 @strspn(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i8*, i32, i32, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
