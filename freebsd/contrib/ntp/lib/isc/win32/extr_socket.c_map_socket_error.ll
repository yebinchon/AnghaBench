; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_socket.c_map_socket_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_socket.c_map_socket_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ISC_R_CONNREFUSED = common dso_local global i32 0, align 4
@DOIO_HARD = common dso_local global i32 0, align 4
@DOIO_SOFT = common dso_local global i32 0, align 4
@ISC_R_NETUNREACH = common dso_local global i32 0, align 4
@ISC_R_HOSTUNREACH = common dso_local global i32 0, align 4
@ISC_R_NETDOWN = common dso_local global i32 0, align 4
@ISC_R_HOSTDOWN = common dso_local global i32 0, align 4
@ISC_R_NOPERM = common dso_local global i32 0, align 4
@ISC_R_CONNECTIONRESET = common dso_local global i32 0, align 4
@ISC_R_NOTCONNECTED = common dso_local global i32 0, align 4
@ISC_R_NORESOURCES = common dso_local global i32 0, align 4
@ISC_R_FAMILYNOSUPPORT = common dso_local global i32 0, align 4
@ISC_R_ADDRNOTAVAIL = common dso_local global i32 0, align 4
@ISC_R_BADADDRESSFORM = common dso_local global i32 0, align 4
@ISC_R_IOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @map_socket_error(%struct.TYPE_3__* %0, i32 %1, i32* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %133 [
    i32 138, label %13
    i32 130, label %25
    i32 146, label %25
    i32 144, label %37
    i32 148, label %37
    i32 133, label %37
    i32 132, label %49
    i32 134, label %61
    i32 142, label %73
    i32 137, label %85
    i32 131, label %85
    i32 139, label %85
    i32 135, label %85
    i32 128, label %97
    i32 145, label %109
    i32 149, label %109
    i32 143, label %109
    i32 129, label %113
    i32 140, label %117
    i32 141, label %121
    i32 136, label %125
    i32 147, label %129
  ]

13:                                               ; preds = %5
  %14 = load i32, i32* @ISC_R_CONNREFUSED, align 4
  %15 = load i32*, i32** %8, align 8
  store i32 %14, i32* %15, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @DOIO_HARD, align 4
  store i32 %21, i32* %11, align 4
  br label %24

22:                                               ; preds = %13
  %23 = load i32, i32* @DOIO_SOFT, align 4
  store i32 %23, i32* %11, align 4
  br label %24

24:                                               ; preds = %22, %20
  br label %137

25:                                               ; preds = %5, %5
  %26 = load i32, i32* @ISC_R_NETUNREACH, align 4
  %27 = load i32*, i32** %8, align 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @DOIO_HARD, align 4
  store i32 %33, i32* %11, align 4
  br label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @DOIO_SOFT, align 4
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %34, %32
  br label %137

37:                                               ; preds = %5, %5, %5
  %38 = load i32, i32* @ISC_R_HOSTUNREACH, align 4
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @DOIO_HARD, align 4
  store i32 %45, i32* %11, align 4
  br label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @DOIO_SOFT, align 4
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %46, %44
  br label %137

49:                                               ; preds = %5
  %50 = load i32, i32* @ISC_R_NETDOWN, align 4
  %51 = load i32*, i32** %8, align 8
  store i32 %50, i32* %51, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @DOIO_HARD, align 4
  store i32 %57, i32* %11, align 4
  br label %60

58:                                               ; preds = %49
  %59 = load i32, i32* @DOIO_SOFT, align 4
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %58, %56
  br label %137

61:                                               ; preds = %5
  %62 = load i32, i32* @ISC_R_HOSTDOWN, align 4
  %63 = load i32*, i32** %8, align 8
  store i32 %62, i32* %63, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* @DOIO_HARD, align 4
  store i32 %69, i32* %11, align 4
  br label %72

70:                                               ; preds = %61
  %71 = load i32, i32* @DOIO_SOFT, align 4
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %70, %68
  br label %137

73:                                               ; preds = %5
  %74 = load i32, i32* @ISC_R_NOPERM, align 4
  %75 = load i32*, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @DOIO_HARD, align 4
  store i32 %81, i32* %11, align 4
  br label %84

82:                                               ; preds = %73
  %83 = load i32, i32* @DOIO_SOFT, align 4
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %82, %80
  br label %137

85:                                               ; preds = %5, %5, %5, %5
  %86 = load i32, i32* @ISC_R_CONNECTIONRESET, align 4
  %87 = load i32*, i32** %8, align 8
  store i32 %86, i32* %87, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @DOIO_HARD, align 4
  store i32 %93, i32* %11, align 4
  br label %96

94:                                               ; preds = %85
  %95 = load i32, i32* @DOIO_SOFT, align 4
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %94, %92
  br label %137

97:                                               ; preds = %5
  %98 = load i32, i32* @ISC_R_NOTCONNECTED, align 4
  %99 = load i32*, i32** %8, align 8
  store i32 %98, i32* %99, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* @DOIO_HARD, align 4
  store i32 %105, i32* %11, align 4
  br label %108

106:                                              ; preds = %97
  %107 = load i32, i32* @DOIO_SOFT, align 4
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %106, %104
  br label %137

109:                                              ; preds = %5, %5, %5
  %110 = load i32, i32* @ISC_R_CONNECTIONRESET, align 4
  %111 = load i32*, i32** %8, align 8
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* @DOIO_HARD, align 4
  store i32 %112, i32* %11, align 4
  br label %137

113:                                              ; preds = %5
  %114 = load i32, i32* @ISC_R_NORESOURCES, align 4
  %115 = load i32*, i32** %8, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* @DOIO_HARD, align 4
  store i32 %116, i32* %11, align 4
  br label %137

117:                                              ; preds = %5
  %118 = load i32, i32* @ISC_R_FAMILYNOSUPPORT, align 4
  %119 = load i32*, i32** %8, align 8
  store i32 %118, i32* %119, align 4
  %120 = load i32, i32* @DOIO_HARD, align 4
  store i32 %120, i32* %11, align 4
  br label %137

121:                                              ; preds = %5
  %122 = load i32, i32* @ISC_R_ADDRNOTAVAIL, align 4
  %123 = load i32*, i32** %8, align 8
  store i32 %122, i32* %123, align 4
  %124 = load i32, i32* @DOIO_HARD, align 4
  store i32 %124, i32* %11, align 4
  br label %137

125:                                              ; preds = %5
  %126 = load i32, i32* @ISC_R_BADADDRESSFORM, align 4
  %127 = load i32*, i32** %8, align 8
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* @DOIO_HARD, align 4
  store i32 %128, i32* %11, align 4
  br label %137

129:                                              ; preds = %5
  %130 = load i32, i32* @ISC_R_NETDOWN, align 4
  %131 = load i32*, i32** %8, align 8
  store i32 %130, i32* %131, align 4
  %132 = load i32, i32* @DOIO_HARD, align 4
  store i32 %132, i32* %11, align 4
  br label %137

133:                                              ; preds = %5
  %134 = load i32, i32* @ISC_R_IOERROR, align 4
  %135 = load i32*, i32** %8, align 8
  store i32 %134, i32* %135, align 4
  %136 = load i32, i32* @DOIO_HARD, align 4
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %133, %129, %125, %121, %117, %113, %109, %108, %96, %84, %72, %60, %48, %36, %24
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* @DOIO_HARD, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = load i32, i32* %7, align 4
  %143 = load i8*, i8** %9, align 8
  %144 = load i64, i64* %10, align 8
  %145 = call i32 @isc__strerror(i32 %142, i8* %143, i64 %144)
  br label %146

146:                                              ; preds = %141, %137
  %147 = load i32, i32* %11, align 4
  ret i32 %147
}

declare dso_local i32 @isc__strerror(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
