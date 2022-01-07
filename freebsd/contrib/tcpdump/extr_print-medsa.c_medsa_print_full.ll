; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-medsa.c_medsa_print_full.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-medsa.c_medsa_print_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.medsa_pkthdr = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tag_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Unknown (%u)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c", %stagged\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c", dev.port:vlan %d.%d:%d\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@code_values = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c", CFI\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c", pri %d: \00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c", dev.trunk:vlan %d.%d:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.medsa_pkthdr*, i32)* @medsa_print_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @medsa_print_full(i32* %0, %struct.medsa_pkthdr* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.medsa_pkthdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.medsa_pkthdr* %1, %struct.medsa_pkthdr** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %5, align 8
  %9 = call i32 @TAG(%struct.medsa_pkthdr* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @tag_values, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @tok2str(i32 %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i32*
  %16 = call i32 @ND_PRINT(i32* %15)
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %138 [
    i32 128, label %18
    i32 129, label %58
    i32 130, label %90
  ]

18:                                               ; preds = %3
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %5, align 8
  %21 = call i32 @SRC_TAG(%struct.medsa_pkthdr* %20)
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %25 = bitcast i8* %24 to i32*
  %26 = call i32 @ND_PRINT(i32* %25)
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %5, align 8
  %29 = call i32 @SRC_DEV(%struct.medsa_pkthdr* %28)
  %30 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %5, align 8
  %31 = call i32 @SRC_PORT(%struct.medsa_pkthdr* %30)
  %32 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %5, align 8
  %33 = call i32 @VID(%struct.medsa_pkthdr* %32)
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i32*
  %36 = call i32 @ND_PRINT(i32* %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @code_values, align 4
  %39 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %5, align 8
  %40 = call i32 @CODE(%struct.medsa_pkthdr* %39)
  %41 = call i32 @tok2str(i32 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i32*
  %44 = call i32 @ND_PRINT(i32* %43)
  %45 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %5, align 8
  %46 = call i32 @CFI(%struct.medsa_pkthdr* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %18
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @ND_PRINT(i32* bitcast ([6 x i8]* @.str.7 to i32*))
  br label %51

51:                                               ; preds = %48, %18
  %52 = load i32*, i32** %4, align 8
  %53 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %5, align 8
  %54 = call i32 @PRI(%struct.medsa_pkthdr* %53)
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i32*
  %57 = call i32 @ND_PRINT(i32* %56)
  br label %143

58:                                               ; preds = %3
  %59 = load i32*, i32** %4, align 8
  %60 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %5, align 8
  %61 = call i32 @SRC_TAG(%struct.medsa_pkthdr* %60)
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %65 = bitcast i8* %64 to i32*
  %66 = call i32 @ND_PRINT(i32* %65)
  %67 = load i32*, i32** %4, align 8
  %68 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %5, align 8
  %69 = call i32 @SRC_DEV(%struct.medsa_pkthdr* %68)
  %70 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %5, align 8
  %71 = call i32 @SRC_PORT(%struct.medsa_pkthdr* %70)
  %72 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %5, align 8
  %73 = call i32 @VID(%struct.medsa_pkthdr* %72)
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i32*
  %76 = call i32 @ND_PRINT(i32* %75)
  %77 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %5, align 8
  %78 = call i32 @CFI(%struct.medsa_pkthdr* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %58
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @ND_PRINT(i32* bitcast ([6 x i8]* @.str.7 to i32*))
  br label %83

83:                                               ; preds = %80, %58
  %84 = load i32*, i32** %4, align 8
  %85 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %5, align 8
  %86 = call i32 @PRI(%struct.medsa_pkthdr* %85)
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i32*
  %89 = call i32 @ND_PRINT(i32* %88)
  br label %143

90:                                               ; preds = %3
  %91 = load i32*, i32** %4, align 8
  %92 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %5, align 8
  %93 = call i32 @SRC_TAG(%struct.medsa_pkthdr* %92)
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %97 = bitcast i8* %96 to i32*
  %98 = call i32 @ND_PRINT(i32* %97)
  %99 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %5, align 8
  %100 = call i32 @TRUNK(%struct.medsa_pkthdr* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %90
  %103 = load i32*, i32** %4, align 8
  %104 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %5, align 8
  %105 = call i32 @SRC_DEV(%struct.medsa_pkthdr* %104)
  %106 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %5, align 8
  %107 = call i32 @SRC_PORT(%struct.medsa_pkthdr* %106)
  %108 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %5, align 8
  %109 = call i32 @VID(%struct.medsa_pkthdr* %108)
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i32*
  %112 = call i32 @ND_PRINT(i32* %111)
  br label %124

113:                                              ; preds = %90
  %114 = load i32*, i32** %4, align 8
  %115 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %5, align 8
  %116 = call i32 @SRC_DEV(%struct.medsa_pkthdr* %115)
  %117 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %5, align 8
  %118 = call i32 @SRC_PORT(%struct.medsa_pkthdr* %117)
  %119 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %5, align 8
  %120 = call i32 @VID(%struct.medsa_pkthdr* %119)
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i32*
  %123 = call i32 @ND_PRINT(i32* %122)
  br label %124

124:                                              ; preds = %113, %102
  %125 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %5, align 8
  %126 = call i32 @CFI(%struct.medsa_pkthdr* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 @ND_PRINT(i32* bitcast ([6 x i8]* @.str.7 to i32*))
  br label %131

131:                                              ; preds = %128, %124
  %132 = load i32*, i32** %4, align 8
  %133 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %5, align 8
  %134 = call i32 @PRI(%struct.medsa_pkthdr* %133)
  %135 = sext i32 %134 to i64
  %136 = inttoptr i64 %135 to i32*
  %137 = call i32 @ND_PRINT(i32* %136)
  br label %143

138:                                              ; preds = %3
  %139 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %5, align 8
  %140 = bitcast %struct.medsa_pkthdr* %139 to i32*
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @ND_DEFAULTPRINT(i32* %140, i32 %141)
  br label %143

143:                                              ; preds = %138, %131, %83, %51
  ret void
}

declare dso_local i32 @TAG(%struct.medsa_pkthdr*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @SRC_TAG(%struct.medsa_pkthdr*) #1

declare dso_local i32 @SRC_DEV(%struct.medsa_pkthdr*) #1

declare dso_local i32 @SRC_PORT(%struct.medsa_pkthdr*) #1

declare dso_local i32 @VID(%struct.medsa_pkthdr*) #1

declare dso_local i32 @CODE(%struct.medsa_pkthdr*) #1

declare dso_local i32 @CFI(%struct.medsa_pkthdr*) #1

declare dso_local i32 @PRI(%struct.medsa_pkthdr*) #1

declare dso_local i32 @TRUNK(%struct.medsa_pkthdr*) #1

declare dso_local i32 @ND_DEFAULTPRINT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
