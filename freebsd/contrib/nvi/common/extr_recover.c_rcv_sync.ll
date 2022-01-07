; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_recover.c_rcv_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_recover.c_rcv_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__*, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_21__*, i8*, i32)* }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64 (%struct.TYPE_23__*, i32)* }

@F_RCV_ON = common dso_local global i32 0, align 4
@F_MODIFIED = common dso_local global i32 0, align 4
@R_RECNOSYNC = common dso_local global i32 0, align 4
@F_RCV_NORM = common dso_local global i32 0, align 4
@M_SYSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"060|File backup failed: %s\00", align 1
@RCV_PRESERVE = common dso_local global i32 0, align 4
@RCV_EMAIL = common dso_local global i32 0, align 4
@RCV_SNAPSHOT = common dso_local global i32 0, align 4
@O_RECDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"vi.XXXXXX\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"061|Copying file for recovery...\00", align 1
@BUSY_ON = common dso_local global i32 0, align 4
@BUSY_OFF = common dso_local global i32 0, align 4
@RCV_ENDSESSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rcv_sync(%struct.TYPE_21__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_22__* %13, %struct.TYPE_22__** %6, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %15 = icmp eq %struct.TYPE_22__* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %18 = load i32, i32* @F_RCV_ON, align 4
  %19 = call i64 @F_ISSET(%struct.TYPE_22__* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %155

22:                                               ; preds = %16
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %24 = load i32, i32* @F_MODIFIED, align 4
  %25 = call i64 @F_ISSET(%struct.TYPE_22__* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %70

27:                                               ; preds = %22
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 0
  %32 = load i64 (%struct.TYPE_23__*, i32)*, i64 (%struct.TYPE_23__*, i32)** %31, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %34, align 8
  %36 = load i32, i32* @R_RECNOSYNC, align 4
  %37 = call i64 %32(%struct.TYPE_23__* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %27
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %41 = load i32, i32* @F_RCV_ON, align 4
  %42 = load i32, i32* @F_RCV_NORM, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @F_CLR(%struct.TYPE_22__* %40, i32 %43)
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %46 = load i32, i32* @M_SYSERR, align 4
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @msgq_str(%struct.TYPE_21__* %45, i32 %46, i32 %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %155

51:                                               ; preds = %27
  %52 = load i32, i32* @RCV_PRESERVE, align 4
  %53 = call i64 @LF_ISSET(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %57 = load i32, i32* @F_RCV_NORM, align 4
  %58 = call i32 @F_SET(%struct.TYPE_22__* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %51
  %60 = load i32, i32* @RCV_EMAIL, align 4
  %61 = call i64 @LF_ISSET(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @rcv_email(%struct.TYPE_21__* %64, i32 %67)
  br label %69

69:                                               ; preds = %63, %59
  br label %70

70:                                               ; preds = %69, %22
  store i32 0, i32* %8, align 4
  %71 = load i32, i32* @RCV_SNAPSHOT, align 4
  %72 = call i64 @LF_ISSET(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %141

74:                                               ; preds = %70
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %76 = load i32, i32* @O_RECDIR, align 4
  %77 = call i64 @opts_empty(%struct.TYPE_21__* %75, i32 %76, i32 0)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %143

80:                                               ; preds = %74
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %82 = load i32, i32* @O_RECDIR, align 4
  %83 = call i8* @O_STR(%struct.TYPE_21__* %81, i32 %82)
  store i8* %83, i8** %9, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = call i8* @join(i8* %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %85, i8** %10, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %89 = load i32, i32* @M_SYSERR, align 4
  %90 = call i32 @msgq(%struct.TYPE_21__* %88, i32 %89, i32* null)
  br label %143

91:                                               ; preds = %80
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = call i32 @rcv_mktemp(%struct.TYPE_21__* %92, i8* %93, i8* %94)
  store i32 %95, i32* %7, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 @free(i8* %98)
  br label %143

100:                                              ; preds = %91
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = load i32 (%struct.TYPE_21__*, i8*, i32)*, i32 (%struct.TYPE_21__*, i8*, i32)** %104, align 8
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %107 = load i32, i32* @BUSY_ON, align 4
  %108 = call i32 %105(%struct.TYPE_21__* %106, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @rcv_copy(%struct.TYPE_21__* %109, i32 %110, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %125, label %116

116:                                              ; preds = %100
  %117 = load i32, i32* %7, align 4
  %118 = call i64 @close(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %116
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = call i64 @rcv_mailfile(%struct.TYPE_21__* %121, i32 1, i8* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120, %116, %100
  %126 = load i8*, i8** %10, align 8
  %127 = call i32 @unlink(i8* %126)
  %128 = load i32, i32* %7, align 4
  %129 = call i64 @close(i32 %128)
  store i32 1, i32* %8, align 4
  br label %130

130:                                              ; preds = %125, %120
  %131 = load i8*, i8** %10, align 8
  %132 = call i32 @free(i8* %131)
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = load i32 (%struct.TYPE_21__*, i8*, i32)*, i32 (%struct.TYPE_21__*, i8*, i32)** %136, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %139 = load i32, i32* @BUSY_OFF, align 4
  %140 = call i32 %137(%struct.TYPE_21__* %138, i8* null, i32 %139)
  br label %141

141:                                              ; preds = %130, %70
  br i1 false, label %142, label %144

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %142, %97, %87, %79
  store i32 1, i32* %8, align 4
  br label %144

144:                                              ; preds = %143, %141
  %145 = load i32, i32* @RCV_ENDSESSION, align 4
  %146 = call i64 @LF_ISSET(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %144
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %150 = call i64 @file_end(%struct.TYPE_21__* %149, i32* null, i32 1)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  store i32 1, i32* %8, align 4
  br label %153

153:                                              ; preds = %152, %148, %144
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %153, %39, %21
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i64 @F_ISSET(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @F_CLR(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @msgq_str(%struct.TYPE_21__*, i32, i32, i8*) #1

declare dso_local i64 @LF_ISSET(i32) #1

declare dso_local i32 @F_SET(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @rcv_email(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @opts_empty(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i8* @O_STR(%struct.TYPE_21__*, i32) #1

declare dso_local i8* @join(i8*, i8*) #1

declare dso_local i32 @msgq(%struct.TYPE_21__*, i32, i32*) #1

declare dso_local i32 @rcv_mktemp(%struct.TYPE_21__*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @rcv_copy(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i64 @rcv_mailfile(%struct.TYPE_21__*, i32, i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i64 @file_end(%struct.TYPE_21__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
