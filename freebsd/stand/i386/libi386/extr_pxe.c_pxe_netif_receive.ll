; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_pxe.c_pxe_netif_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_pxe.c_pxe_netif_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }

@PXENV_UNDI_ISR_IN_START = common dso_local global i64 0, align 8
@PXENV_UNDI_ISR = common dso_local global i32 0, align 4
@PXENV_UNDI_ISR_IN_PROCESS = common dso_local global i64 0, align 8
@PXENV_UNDI_ISR_OUT_TRANSMIT = common dso_local global i64 0, align 8
@PXENV_UNDI_ISR_IN_GET_NEXT = common dso_local global i8* null, align 8
@PXENV_UNDI_ISR_OUT_DONE = common dso_local global i64 0, align 8
@PXENV_UNDI_ISR_OUT_RECEIVE = common dso_local global i64 0, align 8
@ETHER_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @pxe_netif_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxe_netif_receive(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  %10 = call %struct.TYPE_8__* @bio_alloc(i32 48)
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %4, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = icmp eq %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %196

14:                                               ; preds = %1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = call i32 @bzero(%struct.TYPE_8__* %15, i32 48)
  %17 = load i64, i64* @PXENV_UNDI_ISR_IN_START, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* @PXENV_UNDI_ISR, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = call i32 @pxe_call(i32 %20, %struct.TYPE_8__* %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = call i32 @bio_free(%struct.TYPE_8__* %28, i32 48)
  store i32 -1, i32* %2, align 4
  br label %196

30:                                               ; preds = %14
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = call i32 @bzero(%struct.TYPE_8__* %31, i32 48)
  %33 = load i64, i64* @PXENV_UNDI_ISR_IN_PROCESS, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* @PXENV_UNDI_ISR, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = call i32 @pxe_call(i32 %36, %struct.TYPE_8__* %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = call i32 @bio_free(%struct.TYPE_8__* %44, i32 48)
  store i32 -1, i32* %2, align 4
  br label %196

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %76, %46
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PXENV_UNDI_ISR_OUT_TRANSMIT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %47
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = call i32 @bzero(%struct.TYPE_8__* %54, i32 48)
  %56 = load i8*, i8** @PXENV_UNDI_ISR_IN_GET_NEXT, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* @PXENV_UNDI_ISR, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %62 = call i32 @pxe_call(i32 %60, %struct.TYPE_8__* %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %53
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PXENV_UNDI_ISR_OUT_DONE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67, %53
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = call i32 @bio_free(%struct.TYPE_8__* %74, i32 48)
  store i32 -1, i32* %2, align 4
  br label %196

76:                                               ; preds = %67
  br label %47

77:                                               ; preds = %47
  br label %78

78:                                               ; preds = %98, %77
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @PXENV_UNDI_ISR_OUT_RECEIVE, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %108

84:                                               ; preds = %78
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %84
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @PXENV_UNDI_ISR_OUT_DONE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %89, %84
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = call i32 @bio_free(%struct.TYPE_8__* %96, i32 48)
  store i32 -1, i32* %2, align 4
  br label %196

98:                                               ; preds = %89
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %100 = call i32 @bzero(%struct.TYPE_8__* %99, i32 48)
  %101 = load i8*, i8** @PXENV_UNDI_ISR_IN_GET_NEXT, align 8
  %102 = ptrtoint i8* %101 to i64
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load i32, i32* @PXENV_UNDI_ISR, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %107 = call i32 @pxe_call(i32 %105, %struct.TYPE_8__* %106)
  br label %78

108:                                              ; preds = %78
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %8, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load i32, i32* @ETHER_ALIGN, align 4
  %114 = sext i32 %113 to i64
  %115 = add i64 %112, %114
  %116 = trunc i64 %115 to i32
  %117 = call i8* @malloc(i32 %116)
  store i8* %117, i8** %5, align 8
  %118 = load i8*, i8** %5, align 8
  %119 = icmp eq i8* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %108
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %122 = call i32 @bio_free(%struct.TYPE_8__* %121, i32 48)
  store i32 -1, i32* %2, align 4
  br label %196

123:                                              ; preds = %108
  %124 = load i8*, i8** %5, align 8
  %125 = load i32, i32* @ETHER_ALIGN, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8* %127, i8** %6, align 8
  store i64 0, i64* %9, align 8
  br label %128

128:                                              ; preds = %187, %123
  %129 = load i64, i64* %9, align 8
  %130 = load i64, i64* %8, align 8
  %131 = icmp ult i64 %129, %130
  br i1 %131, label %132, label %189

132:                                              ; preds = %128
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = shl i64 %136, 4
  %138 = inttoptr i64 %137 to i8*
  store i8* %138, i8** %7, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i8*, i8** %7, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  store i8* %145, i8** %7, align 8
  %146 = load i8*, i8** %7, align 8
  %147 = call i32 @PTOV(i8* %146)
  %148 = load i8*, i8** %6, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @bcopy(i32 %147, i8* %148, i64 %151)
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = load i8*, i8** %6, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 %155
  store i8* %157, i8** %6, align 8
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* %9, align 8
  %162 = add i64 %161, %160
  store i64 %162, i64* %9, align 8
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %164 = call i32 @bzero(%struct.TYPE_8__* %163, i32 48)
  %165 = load i8*, i8** @PXENV_UNDI_ISR_IN_GET_NEXT, align 8
  %166 = ptrtoint i8* %165 to i64
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  store i64 %166, i64* %168, align 8
  %169 = load i32, i32* @PXENV_UNDI_ISR, align 4
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %171 = call i32 @pxe_call(i32 %169, %struct.TYPE_8__* %170)
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %132
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %178 = call i32 @bio_free(%struct.TYPE_8__* %177, i32 48)
  %179 = load i8*, i8** %5, align 8
  %180 = call i32 @free(i8* %179)
  store i32 -1, i32* %2, align 4
  br label %196

181:                                              ; preds = %132
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @PXENV_UNDI_ISR_OUT_RECEIVE, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  br label %128

188:                                              ; preds = %181
  br label %189

189:                                              ; preds = %188, %128
  %190 = load i8*, i8** %5, align 8
  %191 = load i8**, i8*** %3, align 8
  store i8* %190, i8** %191, align 8
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %193 = call i32 @bio_free(%struct.TYPE_8__* %192, i32 48)
  %194 = load i64, i64* %9, align 8
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %189, %176, %120, %95, %73, %43, %27, %13
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local %struct.TYPE_8__* @bio_alloc(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @pxe_call(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @bio_free(%struct.TYPE_8__*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @bcopy(i32, i8*, i64) #1

declare dso_local i32 @PTOV(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
