; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_scanner.c_lex_getch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_scanner.c_lex_getch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64 }
%struct.FILE_INFO = type { i32, %struct.TYPE_3__, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i64, i32 }

@EOF = common dso_local global i32 0, align 4
@conf_file_sum = common dso_local global i32 0, align 4
@SCHAR_MAX = common dso_local global i32 0, align 4
@remote_config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.FILE_INFO*)* @lex_getch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lex_getch(%struct.FILE_INFO* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.FILE_INFO*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.FILE_INFO* %0, %struct.FILE_INFO** %3, align 8
  %6 = load %struct.FILE_INFO*, %struct.FILE_INFO** %3, align 8
  %7 = icmp eq %struct.FILE_INFO* null, %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.FILE_INFO*, %struct.FILE_INFO** %3, align 8
  %10 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @EOF, align 4
  store i32 %14, i32* %2, align 4
  br label %152

15:                                               ; preds = %8
  %16 = load i32, i32* @EOF, align 4
  %17 = load %struct.FILE_INFO*, %struct.FILE_INFO** %3, align 8
  %18 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %15
  %22 = load %struct.FILE_INFO*, %struct.FILE_INFO** %3, align 8
  %23 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @EOF, align 4
  %26 = load %struct.FILE_INFO*, %struct.FILE_INFO** %3, align 8
  %27 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.FILE_INFO*, %struct.FILE_INFO** %3, align 8
  %29 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @conf_file_sum, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* @conf_file_sum, align 4
  br label %36

36:                                               ; preds = %32, %21
  %37 = load %struct.FILE_INFO*, %struct.FILE_INFO** %3, align 8
  %38 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  br label %121

42:                                               ; preds = %15
  %43 = load %struct.FILE_INFO*, %struct.FILE_INFO** %3, align 8
  %44 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %81

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %61, %47
  %49 = load %struct.FILE_INFO*, %struct.FILE_INFO** %3, align 8
  %50 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @fgetc(i64 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* @EOF, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @SCHAR_MAX, align 4
  %58 = icmp sgt i32 %56, %57
  br label %59

59:                                               ; preds = %55, %48
  %60 = phi i1 [ false, %48 ], [ %58, %55 ]
  br i1 %60, label %61, label %67

61:                                               ; preds = %59
  %62 = load %struct.FILE_INFO*, %struct.FILE_INFO** %3, align 8
  %63 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  br label %48

67:                                               ; preds = %59
  %68 = load i32, i32* @EOF, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @conf_file_sum, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* @conf_file_sum, align 4
  %75 = load %struct.FILE_INFO*, %struct.FILE_INFO** %3, align 8
  %76 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  br label %80

80:                                               ; preds = %71, %67
  br label %120

81:                                               ; preds = %42
  %82 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @remote_config, i32 0, i32 0), align 8
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @remote_config, i32 0, i32 1), align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %5, align 8
  br label %85

85:                                               ; preds = %91, %81
  %86 = load i8*, i8** %5, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* @SCHAR_MAX, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %5, align 8
  %94 = load %struct.FILE_INFO*, %struct.FILE_INFO** %3, align 8
  %95 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %96, align 8
  br label %85

99:                                               ; preds = %85
  %100 = load i32, i32* %4, align 4
  %101 = icmp ne i32 0, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %5, align 8
  %105 = load %struct.FILE_INFO*, %struct.FILE_INFO** %3, align 8
  %106 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %107, align 8
  br label %112

110:                                              ; preds = %99
  %111 = load i32, i32* @EOF, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %110, %102
  %113 = load i8*, i8** %5, align 8
  %114 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @remote_config, i32 0, i32 0), align 8
  %115 = ptrtoint i8* %113 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = trunc i64 %117 to i32
  %119 = sext i32 %118 to i64
  store i64 %119, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @remote_config, i32 0, i32 1), align 8
  br label %120

120:                                              ; preds = %112, %80
  br label %121

121:                                              ; preds = %120, %36
  %122 = load i32, i32* @EOF, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  %126 = load %struct.FILE_INFO*, %struct.FILE_INFO** %3, align 8
  %127 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  store i32 10, i32* %4, align 4
  br label %132

132:                                              ; preds = %131, %125, %121
  %133 = load i32, i32* %4, align 4
  %134 = icmp eq i32 %133, 10
  br i1 %134, label %135, label %150

135:                                              ; preds = %132
  %136 = load %struct.FILE_INFO*, %struct.FILE_INFO** %3, align 8
  %137 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %136, i32 0, i32 2
  %138 = load %struct.FILE_INFO*, %struct.FILE_INFO** %3, align 8
  %139 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %138, i32 0, i32 1
  %140 = bitcast %struct.TYPE_3__* %137 to i8*
  %141 = bitcast %struct.TYPE_3__* %139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %140, i8* align 8 %141, i64 16, i1 false)
  %142 = load %struct.FILE_INFO*, %struct.FILE_INFO** %3, align 8
  %143 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 8
  %147 = load %struct.FILE_INFO*, %struct.FILE_INFO** %3, align 8
  %148 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  store i64 0, i64* %149, align 8
  br label %150

150:                                              ; preds = %135, %132
  %151 = load i32, i32* %4, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %150, %13
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @fgetc(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
