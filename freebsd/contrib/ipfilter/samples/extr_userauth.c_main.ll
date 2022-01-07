; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ipfilter/samples/extr_userauth.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ipfilter/samples/extr_userauth.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frauth = type { i32, i32, %struct.TYPE_4__, i32*, i64 }
%struct.TYPE_4__ = type { i32*, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@IPL_NAME = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@SIOCAUTHW = common dso_local global i32 0, align 4
@FR_OUTQUE = common dso_local global i32 0, align 4
@FR_INQUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@FI_TCPUDP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"port %d \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"-> %s \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Allow packet through ? [y/n]\00", align 1
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@FR_BLOCK = common dso_local global i32 0, align 4
@FR_PASS = common dso_local global i32 0, align 4
@FR_KEEPSTATE = common dso_local global i32 0, align 4
@FR_NOMATCH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"answer = %c (%x), id %d idx %d\0A\00", align 1
@SIOCAUTHR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"SIOCAUTHR\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"errno=%d \0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"frauth-SIOCAUTHW\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.frauth, align 8
  %3 = alloca %struct.frauth*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca [16 x i8], align 16
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store %struct.frauth* %2, %struct.frauth** %3, align 8
  %8 = getelementptr inbounds %struct.frauth, %struct.frauth* %2, i32 0, i32 2
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %5, align 8
  %11 = load i32, i32* @IPL_NAME, align 4
  %12 = load i32, i32* @O_RDWR, align 4
  %13 = call i32 @open(i32 %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = getelementptr inbounds %struct.frauth, %struct.frauth* %2, i32 0, i32 4
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.frauth, %struct.frauth* %2, i32 0, i32 3
  store i32* null, i32** %15, align 8
  br label %16

16:                                               ; preds = %149, %0
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SIOCAUTHW, align 4
  %19 = call i64 @ioctl(i32 %17, i32 %18, %struct.frauth** %3)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %150

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.frauth, %struct.frauth* %2, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @FR_OUTQUE, align 4
  %28 = getelementptr inbounds %struct.frauth, %struct.frauth* %2, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  br label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @FR_INQUE, align 4
  %31 = getelementptr inbounds %struct.frauth, %struct.frauth* %2, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @inet_ntoa(i32 %35)
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @FI_TCPUDP, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %32
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %44, %32
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @inet_ntoa(i32 %54)
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @FI_TCPUDP, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %51
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %63, %51
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i32, i32* @stdout, align 4
  %74 = call i32 @fflush(i32 %73)
  %75 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %76 = load i32, i32* @stdin, align 4
  %77 = call i32 @fgets(i8* %75, i32 16, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %70
  br label %150

80:                                               ; preds = %70
  %81 = load i32, i32* @stdin, align 4
  %82 = call i32 @fflush(i32 %81)
  %83 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %84 = load i8, i8* %83, align 16
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 110
  br i1 %86, label %92, label %87

87:                                               ; preds = %80
  %88 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %89 = load i8, i8* %88, align 16
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 78
  br i1 %91, label %92, label %97

92:                                               ; preds = %87, %80
  %93 = load i32, i32* @FR_BLOCK, align 4
  %94 = getelementptr inbounds %struct.frauth, %struct.frauth* %2, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %93
  store i32 %96, i32* %94, align 8
  br label %131

97:                                               ; preds = %87
  %98 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %99 = load i8, i8* %98, align 16
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 121
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %104 = load i8, i8* %103, align 16
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 89
  br i1 %106, label %107, label %125

107:                                              ; preds = %102, %97
  %108 = load i32, i32* @FR_PASS, align 4
  %109 = getelementptr inbounds %struct.frauth, %struct.frauth* %2, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %108
  store i32 %111, i32* %109, align 8
  %112 = getelementptr inbounds %struct.frauth, %struct.frauth* %2, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @FI_TCPUDP, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %107
  %120 = load i32, i32* @FR_KEEPSTATE, align 4
  %121 = getelementptr inbounds %struct.frauth, %struct.frauth* %2, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %120
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %119, %107
  br label %130

125:                                              ; preds = %102
  %126 = load i32, i32* @FR_NOMATCH, align 4
  %127 = getelementptr inbounds %struct.frauth, %struct.frauth* %2, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %126
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %125, %124
  br label %131

131:                                              ; preds = %130, %92
  %132 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %133 = load i8, i8* %132, align 16
  %134 = sext i8 %133 to i32
  %135 = getelementptr inbounds %struct.frauth, %struct.frauth* %2, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = getelementptr inbounds %struct.frauth, %struct.frauth* %2, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = getelementptr inbounds %struct.frauth, %struct.frauth* %2, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %134, i32 %136, i32 %139, i32 %141)
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @SIOCAUTHR, align 4
  %145 = call i64 @ioctl(i32 %143, i32 %144, %struct.frauth** %3)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %131
  %148 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %131
  br label %16

150:                                              ; preds = %79, %16
  %151 = load i32, i32* @stderr, align 4
  %152 = load i32, i32* @errno, align 4
  %153 = call i32 @fprintf(i32 %151, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %152)
  %154 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %155 = load i32, i32* %1, align 4
  ret i32 %155
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.frauth**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @fgets(i8*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
