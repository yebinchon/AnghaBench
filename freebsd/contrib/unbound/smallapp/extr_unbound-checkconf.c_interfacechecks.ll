; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_interfacechecks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_interfacechecks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file = type { i32, i32, i32*, i32* }
%struct.sockaddr_storage = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"cannot parse interface specified as '%s'\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"interface: %s present twice, cannot bind same ports twice.\00", align 1
@UNBOUND_DNS_PORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"cannot parse outgoing-interface specified as '%s'\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"outgoing-interface: %s present twice, cannot bind same ports twice.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_file*)* @interfacechecks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interfacechecks(%struct.config_file* %0) #0 {
  %2 = alloca %struct.config_file*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_storage, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.config_file* %0, %struct.config_file** %2, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %75, %1
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.config_file*, %struct.config_file** %2, align 8
  %11 = getelementptr inbounds %struct.config_file, %struct.config_file* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %78

14:                                               ; preds = %8
  %15 = load %struct.config_file*, %struct.config_file** %2, align 8
  %16 = getelementptr inbounds %struct.config_file, %struct.config_file* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @extstrtoaddr(i32 %21, %struct.sockaddr_storage* %4, i32* %5)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %14
  %25 = load %struct.config_file*, %struct.config_file** %2, align 8
  %26 = getelementptr inbounds %struct.config_file, %struct.config_file* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @fatal_exit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %24, %14
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %71, %33
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.config_file*, %struct.config_file** %2, align 8
  %37 = getelementptr inbounds %struct.config_file, %struct.config_file* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %74

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %40
  %45 = load %struct.config_file*, %struct.config_file** %2, align 8
  %46 = getelementptr inbounds %struct.config_file, %struct.config_file* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.config_file*, %struct.config_file** %2, align 8
  %53 = getelementptr inbounds %struct.config_file, %struct.config_file* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @strcmp(i32 %51, i32 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %44
  %62 = load %struct.config_file*, %struct.config_file** %2, align 8
  %63 = getelementptr inbounds %struct.config_file, %struct.config_file* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @fatal_exit(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %61, %44, %40
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %34

74:                                               ; preds = %34
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %8

78:                                               ; preds = %8
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %158, %78
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.config_file*, %struct.config_file** %2, align 8
  %82 = getelementptr inbounds %struct.config_file, %struct.config_file* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %161

85:                                               ; preds = %79
  %86 = load %struct.config_file*, %struct.config_file** %2, align 8
  %87 = getelementptr inbounds %struct.config_file, %struct.config_file* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @UNBOUND_DNS_PORT, align 4
  %94 = call i32 @ipstrtoaddr(i32 %92, i32 %93, %struct.sockaddr_storage* %4, i32* %5)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %116, label %96

96:                                               ; preds = %85
  %97 = load %struct.config_file*, %struct.config_file** %2, align 8
  %98 = getelementptr inbounds %struct.config_file, %struct.config_file* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @UNBOUND_DNS_PORT, align 4
  %105 = call i32 @netblockstrtoaddr(i32 %103, i32 %104, %struct.sockaddr_storage* %4, i32* %5, i32* %3)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %96
  %108 = load %struct.config_file*, %struct.config_file** %2, align 8
  %109 = getelementptr inbounds %struct.config_file, %struct.config_file* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @fatal_exit(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %107, %96, %85
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %154, %116
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.config_file*, %struct.config_file** %2, align 8
  %120 = getelementptr inbounds %struct.config_file, %struct.config_file* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %157

123:                                              ; preds = %117
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %153

127:                                              ; preds = %123
  %128 = load %struct.config_file*, %struct.config_file** %2, align 8
  %129 = getelementptr inbounds %struct.config_file, %struct.config_file* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.config_file*, %struct.config_file** %2, align 8
  %136 = getelementptr inbounds %struct.config_file, %struct.config_file* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @strcmp(i32 %134, i32 %141)
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %127
  %145 = load %struct.config_file*, %struct.config_file** %2, align 8
  %146 = getelementptr inbounds %struct.config_file, %struct.config_file* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @fatal_exit(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %144, %127, %123
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  br label %117

157:                                              ; preds = %117
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %6, align 4
  br label %79

161:                                              ; preds = %79
  ret void
}

declare dso_local i32 @extstrtoaddr(i32, %struct.sockaddr_storage*, i32*) #1

declare dso_local i32 @fatal_exit(i8*, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @ipstrtoaddr(i32, i32, %struct.sockaddr_storage*, i32*) #1

declare dso_local i32 @netblockstrtoaddr(i32, i32, %struct.sockaddr_storage*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
