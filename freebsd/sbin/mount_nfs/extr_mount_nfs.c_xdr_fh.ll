; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mount_nfs/extr_mount_nfs.c_xdr_fh.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mount_nfs/extr_mount_nfs.c_xdr_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfhret = type { i32, i64, i32, i64, i32 }

@NFS_FHSIZE = common dso_local global i64 0, align 8
@NFS3_FHSIZE = common dso_local global i64 0, align 8
@AUTH_SYS = common dso_local global i32 0, align 4
@EAUTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.nfhret*)* @xdr_fh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdr_fh(i32* %0, %struct.nfhret* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nfhret*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.nfhret* %1, %struct.nfhret** %5, align 8
  store i64 0, i64* %9, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.nfhret*, %struct.nfhret** %5, align 8
  %12 = getelementptr inbounds %struct.nfhret, %struct.nfhret* %11, i32 0, i32 3
  %13 = call i32 @xdr_u_long(i32* %10, i64* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %139

16:                                               ; preds = %2
  %17 = load %struct.nfhret*, %struct.nfhret** %5, align 8
  %18 = getelementptr inbounds %struct.nfhret, %struct.nfhret* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %139

22:                                               ; preds = %16
  %23 = load %struct.nfhret*, %struct.nfhret** %5, align 8
  %24 = getelementptr inbounds %struct.nfhret, %struct.nfhret* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %138 [
    i32 1, label %26
    i32 3, label %36
  ]

26:                                               ; preds = %22
  %27 = load i64, i64* @NFS_FHSIZE, align 8
  %28 = load %struct.nfhret*, %struct.nfhret** %5, align 8
  %29 = getelementptr inbounds %struct.nfhret, %struct.nfhret* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.nfhret*, %struct.nfhret** %5, align 8
  %32 = getelementptr inbounds %struct.nfhret, %struct.nfhret* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* @NFS_FHSIZE, align 8
  %35 = call i32 @xdr_opaque(i32* %30, i32 %33, i64 %34)
  store i32 %35, i32* %3, align 4
  br label %139

36:                                               ; preds = %22
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.nfhret*, %struct.nfhret** %5, align 8
  %39 = getelementptr inbounds %struct.nfhret, %struct.nfhret* %38, i32 0, i32 1
  %40 = call i32 @xdr_long(i32* %37, i64* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %139

43:                                               ; preds = %36
  %44 = load %struct.nfhret*, %struct.nfhret** %5, align 8
  %45 = getelementptr inbounds %struct.nfhret, %struct.nfhret* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sle i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = load %struct.nfhret*, %struct.nfhret** %5, align 8
  %50 = getelementptr inbounds %struct.nfhret, %struct.nfhret* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NFS3_FHSIZE, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48, %43
  store i32 0, i32* %3, align 4
  br label %139

55:                                               ; preds = %48
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.nfhret*, %struct.nfhret** %5, align 8
  %58 = getelementptr inbounds %struct.nfhret, %struct.nfhret* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.nfhret*, %struct.nfhret** %5, align 8
  %61 = getelementptr inbounds %struct.nfhret, %struct.nfhret* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @xdr_opaque(i32* %56, i32 %59, i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %139

66:                                               ; preds = %55
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @xdr_long(i32* %67, i64* %8)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %139

71:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %106, %71
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %8, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %109

77:                                               ; preds = %72
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @xdr_long(i32* %78, i64* %7)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %139

82:                                               ; preds = %77
  %83 = load %struct.nfhret*, %struct.nfhret** %5, align 8
  %84 = getelementptr inbounds %struct.nfhret, %struct.nfhret* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load i64, i64* %7, align 8
  %89 = trunc i64 %88 to i32
  %90 = load %struct.nfhret*, %struct.nfhret** %5, align 8
  %91 = getelementptr inbounds %struct.nfhret, %struct.nfhret* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load i64, i64* %9, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %9, align 8
  br label %105

94:                                               ; preds = %82
  %95 = load i64, i64* %7, align 8
  %96 = load %struct.nfhret*, %struct.nfhret** %5, align 8
  %97 = getelementptr inbounds %struct.nfhret, %struct.nfhret* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = icmp eq i64 %95, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load i64, i64* %9, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %9, align 8
  br label %104

104:                                              ; preds = %101, %94
  br label %105

105:                                              ; preds = %104, %87
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  br label %72

109:                                              ; preds = %72
  %110 = load i64, i64* %8, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = load %struct.nfhret*, %struct.nfhret** %5, align 8
  %114 = getelementptr inbounds %struct.nfhret, %struct.nfhret* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i32, i32* @AUTH_SYS, align 4
  %119 = load %struct.nfhret*, %struct.nfhret** %5, align 8
  %120 = getelementptr inbounds %struct.nfhret, %struct.nfhret* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %117, %112, %109
  %122 = load i64, i64* %9, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %137, label %124

124:                                              ; preds = %121
  %125 = load i64, i64* %8, align 8
  %126 = icmp sgt i64 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %124
  %128 = load %struct.nfhret*, %struct.nfhret** %5, align 8
  %129 = getelementptr inbounds %struct.nfhret, %struct.nfhret* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @AUTH_SYS, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %127, %124
  %134 = load i64, i64* @EAUTH, align 8
  %135 = load %struct.nfhret*, %struct.nfhret** %5, align 8
  %136 = getelementptr inbounds %struct.nfhret, %struct.nfhret* %135, i32 0, i32 3
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %133, %127, %121
  store i32 1, i32* %3, align 4
  br label %139

138:                                              ; preds = %22
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %137, %81, %70, %65, %54, %42, %26, %21, %15
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @xdr_u_long(i32*, i64*) #1

declare dso_local i32 @xdr_opaque(i32*, i32, i64) #1

declare dso_local i32 @xdr_long(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
