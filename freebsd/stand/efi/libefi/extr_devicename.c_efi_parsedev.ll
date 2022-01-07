; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_devicename.c_efi_parsedev.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_devicename.c_efi_parsedev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devsw = type { i8*, i32 }
%struct.devdesc = type { i32, %struct.devsw* }
%struct.disk_devdesc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@devsw = common dso_local global %struct.devsw** null, align 8
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EUNIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devdesc**, i8*, i8**)* @efi_parsedev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efi_parsedev(%struct.devdesc** %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devdesc**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.devdesc*, align 8
  %9 = alloca %struct.devsw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.devdesc** %0, %struct.devdesc*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %164

20:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %46, %20
  %22 = load %struct.devsw**, %struct.devsw*** @devsw, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.devsw*, %struct.devsw** %22, i64 %24
  %26 = load %struct.devsw*, %struct.devsw** %25, align 8
  %27 = icmp ne %struct.devsw* %26, null
  br i1 %27, label %28, label %49

28:                                               ; preds = %21
  %29 = load %struct.devsw**, %struct.devsw*** @devsw, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.devsw*, %struct.devsw** %29, i64 %31
  %33 = load %struct.devsw*, %struct.devsw** %32, align 8
  store %struct.devsw* %33, %struct.devsw** %9, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.devsw*, %struct.devsw** %9, align 8
  %36 = getelementptr inbounds %struct.devsw, %struct.devsw* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.devsw*, %struct.devsw** %9, align 8
  %39 = getelementptr inbounds %struct.devsw, %struct.devsw* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = call i32 @strncmp(i8* %34, i8* %37, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %28
  br label %49

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %21

49:                                               ; preds = %44, %21
  %50 = load %struct.devsw**, %struct.devsw*** @devsw, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.devsw*, %struct.devsw** %50, i64 %52
  %54 = load %struct.devsw*, %struct.devsw** %53, align 8
  %55 = icmp eq %struct.devsw* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @ENOENT, align 4
  store i32 %57, i32* %4, align 4
  br label %164

58:                                               ; preds = %49
  %59 = load i8*, i8** %6, align 8
  %60 = load %struct.devsw*, %struct.devsw** %9, align 8
  %61 = getelementptr inbounds %struct.devsw, %struct.devsw* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @strlen(i8* %62)
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %59, i64 %64
  store i8* %65, i8** %14, align 8
  store %struct.devdesc* null, %struct.devdesc** %8, align 8
  store i32 0, i32* %12, align 4
  %66 = load %struct.devsw*, %struct.devsw** %9, align 8
  %67 = getelementptr inbounds %struct.devsw, %struct.devsw* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %86 [
    i32 129, label %69
    i32 130, label %70
  ]

69:                                               ; preds = %58
  br label %147

70:                                               ; preds = %58
  %71 = call %struct.devdesc* @malloc(i32 4)
  store %struct.devdesc* %71, %struct.devdesc** %8, align 8
  %72 = load %struct.devdesc*, %struct.devdesc** %8, align 8
  %73 = icmp eq %struct.devdesc* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @ENOMEM, align 4
  store i32 %75, i32* %4, align 4
  br label %164

76:                                               ; preds = %70
  %77 = load %struct.devdesc*, %struct.devdesc** %8, align 8
  %78 = bitcast %struct.devdesc* %77 to %struct.disk_devdesc*
  %79 = load i8*, i8** %14, align 8
  %80 = load i8**, i8*** %7, align 8
  %81 = call i32 @disk_parsedev(%struct.disk_devdesc* %78, i8* %79, i8** %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %160

85:                                               ; preds = %76
  br label %147

86:                                               ; preds = %58
  %87 = call %struct.devdesc* @malloc(i32 16)
  store %struct.devdesc* %87, %struct.devdesc** %8, align 8
  %88 = load %struct.devdesc*, %struct.devdesc** %8, align 8
  %89 = icmp eq %struct.devdesc* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* @ENOMEM, align 4
  store i32 %91, i32* %4, align 4
  br label %164

92:                                               ; preds = %86
  store i32 0, i32* %11, align 4
  %93 = load i8*, i8** %14, align 8
  store i8* %93, i8** %13, align 8
  %94 = load i8*, i8** %14, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %92
  %99 = load i8*, i8** %14, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 58
  br i1 %102, label %103, label %115

103:                                              ; preds = %98
  store i32 0, i32* @errno, align 4
  %104 = load i8*, i8** %14, align 8
  %105 = call i32 @strtol(i8* %104, i8** %13, i32 0)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* @errno, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %103
  %109 = load i8*, i8** %13, align 8
  %110 = load i8*, i8** %14, align 8
  %111 = icmp eq i8* %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %108, %103
  %113 = load i32, i32* @EUNIT, align 4
  store i32 %113, i32* %12, align 4
  br label %160

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114, %98, %92
  %116 = load i8*, i8** %13, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load i8*, i8** %13, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 58
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i32, i32* @EINVAL, align 4
  store i32 %126, i32* %12, align 4
  br label %160

127:                                              ; preds = %120, %115
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.devdesc*, %struct.devdesc** %8, align 8
  %130 = getelementptr inbounds %struct.devdesc, %struct.devdesc* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load i8**, i8*** %7, align 8
  %132 = icmp ne i8** %131, null
  br i1 %132, label %133, label %146

133:                                              ; preds = %127
  %134 = load i8*, i8** %13, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = load i8*, i8** %13, align 8
  br label %143

140:                                              ; preds = %133
  %141 = load i8*, i8** %13, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  br label %143

143:                                              ; preds = %140, %138
  %144 = phi i8* [ %139, %138 ], [ %142, %140 ]
  %145 = load i8**, i8*** %7, align 8
  store i8* %144, i8** %145, align 8
  br label %146

146:                                              ; preds = %143, %127
  br label %147

147:                                              ; preds = %146, %85, %69
  %148 = load %struct.devsw*, %struct.devsw** %9, align 8
  %149 = load %struct.devdesc*, %struct.devdesc** %8, align 8
  %150 = getelementptr inbounds %struct.devdesc, %struct.devdesc* %149, i32 0, i32 1
  store %struct.devsw* %148, %struct.devsw** %150, align 8
  %151 = load %struct.devdesc**, %struct.devdesc*** %5, align 8
  %152 = icmp ne %struct.devdesc** %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = load %struct.devdesc*, %struct.devdesc** %8, align 8
  %155 = load %struct.devdesc**, %struct.devdesc*** %5, align 8
  store %struct.devdesc* %154, %struct.devdesc** %155, align 8
  br label %159

156:                                              ; preds = %147
  %157 = load %struct.devdesc*, %struct.devdesc** %8, align 8
  %158 = call i32 @free(%struct.devdesc* %157)
  br label %159

159:                                              ; preds = %156, %153
  store i32 0, i32* %4, align 4
  br label %164

160:                                              ; preds = %125, %112, %84
  %161 = load %struct.devdesc*, %struct.devdesc** %8, align 8
  %162 = call i32 @free(%struct.devdesc* %161)
  %163 = load i32, i32* %12, align 4
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %160, %159, %90, %74, %56, %18
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.devdesc* @malloc(i32) #1

declare dso_local i32 @disk_parsedev(%struct.disk_devdesc*, i8*, i8**) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @free(%struct.devdesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
